execute if entity @s[nbt={Inventory:[{id:"minecraft:diamond"}]}] run scoreboard players add @s digsitescore 4
execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:diamond"}]}] run playsound minecraft:block.note_block.iron_xylophone master @s
execute if entity @s[nbt={Inventory:[{id:"minecraft:diamond"}]}] run clear @s diamond 1
tellraw @s [{"text":">>> ","color":"gray"},{"text":"+4 Score","color":"aqua"}]
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:diamond"}]}] run function lt20:minigames/desert_dig/count_diamond
