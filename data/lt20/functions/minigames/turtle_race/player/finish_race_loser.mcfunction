# Copy over global time score to players final time
execute as @e[tag=racing_turtle] at @s unless entity @a[tag=turtle_racer,distance=..0.5] run kill @s
tag @s remove turtle_racer
clear @s
scoreboard players reset @s TRacePowerupTime
scoreboard players set @s TRacePlayerStage -1
scoreboard players operation @s TRacePlayerM = Mins TRaceGlobal
scoreboard players operation @s TRacePlayerS = SecsMinusMins TRaceGlobal
scoreboard players add FinishedPlayers TRaceGlobal 1
scoreboard players operation @s TRacePlayerPlace = FinishedPlayers TRaceGlobal
execute if score Mode TRaceGlobal matches 3 in tropicraft:tropics run tp @s -1203 134 2539 -90 -45
execute if score Mode TRaceGlobal matches 2 in tropicraft:tropics run tp @s -938 134 2242 90 10
execute if score Mode TRaceGlobal matches 1 in tropicraft:tropics run tp @s -695 134 2539 145 15

execute if score @s TRacePlayerS matches 10.. run tellraw @a [{"selector":"@s","color":"gray"},{"text":" has finished the race in position: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerPlace"}},{"text":" | "},{"text":"Time: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerM"},"color":"white"},{"text":":","color":"dark_gray"},{"score":{"name":"@s","objective":"TRacePlayerS"},"color":"white"}]
execute if score @s TRacePlayerS matches ..9 run tellraw @a [{"selector":"@s","color":"gray"},{"text":" has finished the race in position: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerPlace"}},{"text":" | "},{"text":"Time: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerM"},"color":"white"},{"text":":","color":"dark_gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"TRacePlayerS"},"color":"white"}]
