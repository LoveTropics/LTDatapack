playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 1
scoreboard players add @s TRacePlayerStage 1
tellraw @s [{"text":"You've passed checkpoint number: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerStage"},"color":"aqua"}]
execute if score @s TRacePlayerStage matches 4 run tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" is halfway through the course.","color":"yellow"}]
