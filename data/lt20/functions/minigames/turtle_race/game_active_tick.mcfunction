execute if score TimeToCancel TRaceGlobal matches 1.. run scoreboard players remove TimeToCancel TRaceGlobal 1
execute if score TimeToCancel TRaceGlobal matches 0 run function lt20:minigames/turtle_race/cancel_causes/failed_to_mount
execute if score Mode TRaceGlobal matches 1 as @e[tag=racing_turtle_spawn,tag=!has_turtle] at @s if entity @e[tag=turtle_racer_spawn,tag=has_racer,distance=..3.5,sort=nearest,limit=1] run function lt20:minigames/turtle_race/turtle/spawn
execute if score Mode TRaceGlobal matches 3 as @e[tag=flying_racing_turtle_spawn,tag=!has_turtle] at @s if entity @e[tag=flying_turtle_racer_spawn,tag=has_racer,distance=..2,sort=nearest,limit=1] run function lt20:minigames/turtle_race/turtle/spawn_flying
tag @e[tag=racing_turtle] remove is_mounted
execute as @e[tag=racing_turtle] at @s if entity @p[distance=..0.25,tag=turtle_racer,sort=nearest] run tag @s add is_mounted

execute if score Mode TRaceGlobal matches 3 in tropicraft:tropics run setblock -1180 187 2551 minecraft:end_gateway
execute if score Mode TRaceGlobal matches 3 in tropicraft:tropics run setblock -1180 187 2527 minecraft:end_gateway

execute unless entity @e[tag=racing_turtle,tag=!is_mounted] if entity @e[tag=racing_turtle] if score TimeToCancel TRaceGlobal matches 0.. run function lt20:minigames/turtle_race/countdown/3

execute as @e[tag=racing_turtle] at @s if score HoldTurtles TRaceGlobal matches 1 if score Mode TRaceGlobal matches 1..2 run data merge entity @s {NoAI:1b,Attributes:[{Base:0.0d,Name:"generic.movementSpeed"},{Base:0.0d,Name:"forge.swimSpeed"}]}
execute as @e[tag=racing_turtle,tag=!has_speed_boost,tag=!is_electrified,tag=!been_slowed] at @s if score HoldTurtles TRaceGlobal matches 0 if score Mode TRaceGlobal matches 1..2 run data merge entity @s {NoBrakesOnThisTrain:1b,NoAI:1b,Attributes:[{Base:1.7d,Name:"generic.movementSpeed"},{Base:1.0d,Name:"forge.swimSpeed"}]}

execute as @a[tag=turtle_racer] at @s if block ~ 255 ~ ltextras:checkpoint if score Mode TRaceGlobal matches 1 run function lt20:minigames/turtle_race/player/check_checkpoint_normal
execute as @a[tag=turtle_racer] at @s if block ~ 255 ~ ltextras:checkpoint if score Mode TRaceGlobal matches 2 run function lt20:minigames/turtle_race/player/check_checkpoint_arcade
execute as @a[tag=turtle_racer] at @s if block ~ ~ ~ ltextras:checkpoint if score Mode TRaceGlobal matches 3 run function lt20:minigames/turtle_race/player/check_checkpoint_flying

execute as @a[tag=turtle_racer] at @s if block ~ 255 ~ ltextras:checkpoint[stage=40] if score Mode TRaceGlobal matches 1..2 if score GameState TRaceGlobal matches ..3 run function lt20:minigames/turtle_race/player/finish_race_finalist
execute as @a[tag=turtle_racer] at @s if block ~ 255 ~ ltextras:checkpoint[stage=40] if score Mode TRaceGlobal matches 1..2 if score GameState TRaceGlobal matches 4 run function lt20:minigames/turtle_race/player/finish_race_loser

execute as @a[tag=turtle_racer,scores={TRacePlayerStage=32..}] at @s if block ~ ~ ~ ltextras:checkpoint[stage=40] if score Mode TRaceGlobal matches 3 if score GameState TRaceGlobal matches ..3 run function lt20:minigames/turtle_race/player/finish_race_finalist
execute as @a[tag=turtle_racer,scores={TRacePlayerStage=32..}] at @s if block ~ ~ ~ ltextras:checkpoint[stage=40] if score Mode TRaceGlobal matches 3 if score GameState TRaceGlobal matches 4 run function lt20:minigames/turtle_race/player/finish_race_loser
execute as @a[tag=turtle_racer,scores={TRacePlayerStage=..31}] at @s if block ~ ~ ~ ltextras:checkpoint[stage=40] if score Mode TRaceGlobal matches 3 if score GameState TRaceGlobal matches ..3 run function lt20:minigames/turtle_race/player/finish_race_incomplete

execute if score GameState TRaceGlobal matches 2..3 if score TickCount TRaceGlobal matches 20.. run function lt20:minigames/turtle_race/on_second
execute if score TickCount TRaceGlobal matches ..19 if score GameState TRaceGlobal matches 2..3 run scoreboard players add TickCount TRaceGlobal 1
execute as @a at @s if score @s TRacePlayerStage matches -1 run function lt20:minigames/turtle_race/player/track_time

execute if score Mode TRaceGlobal matches 2 if score TimeToDrop TRaceGlobal matches 1.. run scoreboard players remove TimeToDrop TRaceGlobal 1
execute if score Mode TRaceGlobal matches 2 if score TimeToDrop TRaceGlobal matches 0 run function lt20:minigames/turtle_race/countdown/5

### Handles powerup animation and activation detection
scoreboard players add PowerupAnimate TRaceGlobal 1
execute as @e[tag=speed_powerup,tag=powerup_active] at @s if score PowerupAnimate TRaceGlobal matches 5 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:2}}]}
execute as @e[tag=speed_powerup,tag=powerup_active] at @s if score PowerupAnimate TRaceGlobal matches 10 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:3}}]}
execute as @e[tag=speed_powerup,tag=powerup_active] at @s if score PowerupAnimate TRaceGlobal matches 15 run data merge entity @s {Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:4}}]}
execute as @e[tag=speed_powerup,tag=!powerup_active] at @s if score PowerupAnimate TRaceGlobal matches 15 run data merge entity @s {Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b,tag:{CustomModelData:4}}]}
execute as @e[tag=sabatoge_powerup,tag=powerup_active] at @s run data merge entity @s {Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:5}}]}
execute as @e[tag=sabatoge_powerup,tag=!powerup_active] at @s run data merge entity @s {Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b,tag:{CustomModelData:5}}]}
execute if score PowerupAnimate TRaceGlobal matches 15.. run scoreboard players set PowerupAnimate TRaceGlobal 0

execute as @e[tag=racing_turtle] at @s positioned ~ ~1 ~ if entity @e[tag=speed_powerup,tag=powerup_active,sort=nearest,limit=1,distance=..1.5] run function lt20:minigames/turtle_race/powerups/apply/speed_boost

execute as @e[tag=racing_turtle] at @s positioned ~ ~1 ~ if entity @e[tag=sabatoge_powerup,tag=powerup_active,sort=nearest,limit=1,distance=..1.5] run function lt20:minigames/turtle_race/powerups/apply/sabatoge_powerup

scoreboard players remove @e[tag=has_speed_boost] TRaceSpeedTime 1
execute as @e[tag=has_speed_boost] at @s run particle cloud ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=has_speed_boost] at @s if score @s TRaceSpeedTime matches ..0 run function lt20:minigames/turtle_race/powerups/remove/speed_boost

# Sabatoges
execute as @a[tag=turtle_racer,tag=!inked,scores={TRaceGiveTime=0..}] at @s run function lt20:minigames/turtle_race/sabatoges/play_sound

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{turtleRaceSabatoge:1b}}}] at @s run function lt20:minigames/turtle_race/sabatoges/sabatoge_activate


execute as @e[tag=shock_jelly] at @s if score @s TRacePowerupTime matches -99.. run scoreboard players remove @s TRacePowerupTime 1
execute as @e[tag=shock_jelly] at @s if score @s TRacePowerupTime matches 30 run data merge entity @s {CustomName:'[{"text":"Shock in: ","color":"aqua"},{"text":"2","color":"white"}]'}
execute as @e[tag=shock_jelly] at @s if score @s TRacePowerupTime matches 10 run data merge entity @s {CustomName:'[{"text":"Shock in: ","color":"aqua"},{"text":"1","color":"white"}]'}
execute as @e[tag=shock_jelly] at @s if score @s TRacePowerupTime matches 0 run data merge entity @s {CustomName:'[{"text":"Shock Active","color":"aqua"}]'}
execute as @e[tag=shock_jelly] at @s if score @s TRacePowerupTime matches ..-1 run particle minecraft:crit ~ ~ ~ 1 0.75 1 0.2 15 force
execute as @e[tag=shock_jelly] at @s if score @s TRacePowerupTime matches -100 run tp @s ~ ~-500 ~

execute as @e[tag=shock_jelly] at @s if score @s TRacePowerupTime matches ..-1 run execute as @e[tag=racing_turtle,distance=..5,tag=!is_electrified] at @s run tellraw @a [{"selector":"@a[tag=turtle_racer,sort=nearest,limit=1,distance=..2]","color":"gray"},{"text":" has been caught by a shock jelly!","color":"yellow"}]
tag @e[tag=racing_turtle] remove is_electrified

scoreboard players remove @e[tag=racing_turtle,scores={TRaceShockTime=1..}] TRaceShockTime 1
execute as @e[tag=racing_turtle] at @s if score @s TRaceShockTime matches 1.. run tag @s add is_electrified
execute as @e[tag=racing_turtle] at @s if score @s TRaceShockTime matches 0 run scoreboard players reset @s TRaceShockTime

execute as @e[tag=shock_jelly] at @s if score @s TRacePowerupTime matches ..-1 run execute as @e[tag=racing_turtle,distance=..5] at @s run tag @s add is_electrified
execute as @e[tag=racing_turtle,tag=is_electrified] at @s run data merge entity @s {NoBrakesOnThisTrain:0b,Attributes:[{Base:0.0d,Name:"generic.movementSpeed"},{Base:0.0d,Name:"forge.swimSpeed"}],Motion:[0.0d,0.0d,0.0d]}
execute as @e[tag=racing_turtle,tag=is_electrified] at @s run particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0.2 3 force


execute as @e[tag=ink_bomb] at @s if score @s TRacePowerupTime matches 1.. run scoreboard players remove @s TRacePowerupTime 1
execute as @e[tag=ink_bomb] at @s if score @s TRacePowerupTime matches 0 run function lt20:minigames/turtle_race/sabatoges/activate_ink_bomb

execute as @e[tag=ink_bomb,tag=armed] at @s run particle minecraft:squid_ink ~ ~-0.25 ~ 0 0 0 0.01 1 force
execute as @e[tag=ink_bomb,tag=armed] at @s run execute as @e[tag=racing_turtle,distance=..4,sort=nearest,limit=1,tag=!inked] at @s run function lt20:minigames/turtle_race/sabatoges/get_inked
execute as @a[tag=inked,tag=turtle_racer] at @s run particle minecraft:squid_ink ~ ~ ~ 0.75 0.75 0.75 0 2 force
scoreboard players remove @a[tag=inked,scores={TRacePowerupTime=1..}] TRacePowerupTime 1
execute as @a[tag=inked,scores={TRacePowerupTime=0}] at @s run tag @s remove inked
execute as @a[tag=turtle_racer,scores={TRacePowerupTime=0}] at @s run replaceitem entity @s armor.head air
execute as @a[scores={TRacePowerupTime=0}] at @s run scoreboard players reset @s TRacePowerupTime

execute as @a[tag=turtle_racer,tag=has_slow_aura] at @s run execute as @a[tag=turtle_racer,tag=!been_slowed,distance=0.25..4,limit=1,sort=nearest] at @s run function lt20:minigames/turtle_race/sabatoges/get_slowed
execute as @a[tag=turtle_racer,tag=been_slowed] at @s run data merge entity @e[tag=racing_turtle,sort=nearest,limit=1,distance=..1] {NoBrakesOnThisTrain:1b,NoAI:1b,Attributes:[{Base:0.5d,Name:"generic.movementSpeed"},{Base:1.0d,Name:"forge.swimSpeed"}]}
title @a[tag=turtle_racer,tag=been_slowed] actionbar {"text":"An opponents slow aura is affecting you!","color":"red"}

scoreboard players remove @a[tag=turtle_racer,tag=has_slow_aura,scores={TRaceSlowAura=1..}] TRaceSlowAura 1
execute as @a[tag=turtle_racer,tag=has_slow_aura,scores={TRaceSlowAura=0}] at @s run function lt20:minigames/turtle_race/sabatoges/remove_slow_aura

scoreboard players remove @a[tag=turtle_racer,scores={TRaceSlowTime=1..}] TRaceSlowTime 1
tag @a[tag=turtle_racer,scores={TRaceSlowTime=0}] remove been_slowed
scoreboard players reset @a[tag=turtle_racer,scores={TRaceSlowTime=0}] TRaceSlowTime

scoreboard players remove @a[tag=turtle_racer,scores={TRaceFailTime=1..}] TRaceFailTime 1
scoreboard players reset @a[tag=turtle_racer,scores={TRaceFailTime=0}] TRaceFailTime

scoreboard players remove @a[tag=turtle_racer,scores={TRaceCheckDelay=1..}] TRaceCheckDelay 1
tag @a[tag=turtle_racer,scores={TRaceCheckDelay=0}] remove passed_checkpoint
scoreboard players reset @a[tag=turtle_racer,scores={TRaceCheckDelay=0}] TRaceCheckDelay
