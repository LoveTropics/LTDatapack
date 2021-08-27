scoreboard players remove @s TRaceGiveTime 1

execute if score @s TRaceGiveTime matches 0 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1
execute if score @s TRaceGiveTime matches 3 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1.5
execute if score @s TRaceGiveTime matches 6 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1
execute if score @s TRaceGiveTime matches 9 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1.5
execute if score @s TRaceGiveTime matches 12 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1
execute if score @s TRaceGiveTime matches 15 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1.5
execute if score @s TRaceGiveTime matches 18 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1
execute if score @s TRaceGiveTime matches 21 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1.5
execute if score @s TRaceGiveTime matches 24 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1
execute if score @s TRaceGiveTime matches 27 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1.5
execute if score @s TRaceGiveTime matches 30 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1
execute if score @s TRaceGiveTime matches 33 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1.5
execute if score @s TRaceGiveTime matches 35 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1
execute if score @s TRaceGiveTime matches 0 run function lt20:minigames/turtle_race/sabatoges/give_sabatoge
