scoreboard players add @s TRaceRocketTrack 1
tp @s ^ ^ ^1
execute as @a[tag=!is_launching_shock_rocket,tag=turtle_racer,distance=..5] at @s run function lt20:minigames/turtle_race/sabatoges/get_shock_rocketed
execute if entity @a[tag=!is_launching_shock_rocket,tag=turtle_racer,distance=..5] run kill @s
particle minecraft:end_rod ~ ~ ~ 0.4 0.4 0.4 0 10 force
execute if score @s TRaceRocketTrack matches 25 run tellraw @a[tag=is_launching_shock_rocket] {"text":"Shock Rocket failed to find a target.","colro":"red"}
execute if score @s TRaceRocketTrack matches 25 run execute as @a[tag=is_launching_shock_rocket] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 2 1
execute if score @s TRaceRocketTrack matches 25 run tag @a remove is_launching_shock_rocket
execute if score @s TRaceRocketTrack matches 25 run kill @s
execute if score @s TRaceRocketTrack matches ..24 unless entity @a[tag=!is_launching_shock_rocket,tag=turtle_racer,distance=..5] as @s at @s run function lt20:minigames/turtle_race/sabatoges/scan_rocket
