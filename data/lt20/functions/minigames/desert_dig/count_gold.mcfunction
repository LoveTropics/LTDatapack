execute if entity @s[nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] run scoreboard players add @s digsitescore 2
execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] run playsound minecraft:block.note_block.iron_xylophone master @s
execute if entity @s[nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] run clear @s gold_ingot 1
tellraw @s [{"text":">>> ","color":"gray"},{"text":"+2 Score","color":"gold"}]
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] run function lt20:minigames/desert_dig/count_gold
