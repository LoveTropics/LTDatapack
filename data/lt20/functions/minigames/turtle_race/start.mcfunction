execute if score Mode TRaceGlobal matches 1 run scoreboard players set HoldTurtles TRaceGlobal 0
title @a title " "
execute as @a[tag=turtle_racer] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 1.25 1
execute as @e[tag=racing_turtle_spawn] at @s if score Mode TRaceGlobal matches 1 run fill ~ ~-1 ~ ~1 ~-1 ~-1 air
scoreboard players set @a[tag=turtle_racer] TRacePlayerStage 0
scoreboard players set GameState TRaceGlobal 2
execute if score Mode TRaceGlobal matches 2 in tropicraft:tropics run fill -688 132 2471 -674 132 2458 air replace glass
execute if score Mode TRaceGlobal matches 2 run execute as @e[tag=racing_turtle] at @s unless entity @a[tag=turtle_racer,limit=1,sort=nearest,distance=..0.6] run tp @s ~ ~-500 ~
execute if score Mode TRaceGlobal matches 3 run execute as @e[tag=racing_turtle] at @s run data merge entity @s {Attributes:[{Base:2.0d,Name:"generic.movementSpeed"}]}
execute if score Mode TRaceGlobal matches 3 run effect clear @a[tag=turtle_racer] slowness
