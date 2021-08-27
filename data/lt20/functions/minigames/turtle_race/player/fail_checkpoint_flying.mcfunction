# If above fails; Tell player they have missed a previous checkpoint. (TRacePlayerStage + 1)
execute as @s[tag=!passed_checkpoint] at @s unless score @s TRaceFailTime matches 1.. run scoreboard players add @s TRacePlayerStage 1
execute as @s[tag=!passed_checkpoint] at @s unless score @s TRaceFailTime matches 1.. run tellraw @s [{"text":">>> ","color":"gray"},{"text":"Oh no! You missed the last checkpoint, go back and fly through it to hit it! ","color":"red"},{"text":"Checkpoint Missed: ","color":"dark_gray"},{"score":{"name":"@s","objective":"TRacePlayerStage"},"color":"yellow"}]
execute as @s[tag=!passed_checkpoint] at @s unless score @s TRaceFailTime matches 1.. run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 2 1
execute as @s[tag=!passed_checkpoint] at @s unless score @s TRaceFailTime matches 1.. run title @s times 0 20 0
execute as @s[tag=!passed_checkpoint] at @s unless score @s TRaceFailTime matches 1.. run title @s title " "
execute as @s[tag=!passed_checkpoint] at @s unless score @s TRaceFailTime matches 1.. run title @s subtitle {"text":"| Checkpoint Missed |","color":"red"}
execute as @s[tag=!passed_checkpoint] at @s unless score @s TRaceFailTime matches 1.. run scoreboard players remove @s TRacePlayerStage 1
execute as @s[tag=!passed_checkpoint] at @s unless score @s TRaceFailTime matches 1.. run scoreboard players set @s TRaceFailTime 30
