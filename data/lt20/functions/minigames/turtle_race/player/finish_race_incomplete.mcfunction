# Copy over global time score to players final time
execute as @e[tag=racing_turtle] at @s unless entity @a[tag=turtle_racer,distance=..0.5] run kill @s
tag @s remove turtle_racer
clear @s
execute as @s at @s run playsound minecraft:item.signature_run.failure master @s ~ ~ ~ 1 1
scoreboard players reset @s TRacePowerupTime
scoreboard players set @s TRacePlayerStage -1
execute if score Mode TRaceGlobal matches 3 in tropicraft:tropics run tp @s -1203 134 2539 -90 -45

tellraw @s [{"text":"You crossed the finish line but didn't hit all the checkpoints along the way :|. Make sure to go through the half-circle checkpoints as well as the circular ones.","color":"yellow"}]
