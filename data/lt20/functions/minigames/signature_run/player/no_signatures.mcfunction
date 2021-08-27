playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 0.5
tellraw @s [{"text":">>> ","color":"yellow"},{"text":"You need signatures in order to hand them in.","color":"gray"}]
tag @s remove PlayerInteracted
