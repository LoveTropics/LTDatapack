execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] run scoreboard players add @s digsitescore 1
execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] run playsound minecraft:block.note_block.iron_xylophone master @s
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] run clear @s iron_ingot 1
tellraw @s [{"text":">>> ","color":"gray"},{"text":"+1 Score","color":"dark_gray"}]
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] run function lt20:minigames/desert_dig/count_iron
