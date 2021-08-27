#execute if score GameState TRaceGlobal matches 2 run scoreboard players add @a[tag=turtle_racer] TRacePlayerT 1
execute if score GameState TRaceGlobal matches 1.. run function lt20:minigames/turtle_race/game_active_tick

#execute at @e[tag=speed_powerup] positioned ~ ~0.60 ~ run particle minecraft:composter ^0.60 ^ ^ 0 0 0 0.01 1
#execute at @e[tag=speed_powerup] positioned ~ ~0.60 ~ run particle minecraft:composter ^-0.60 ^ ^ 0 0 0 0.01 1
#execute at @e[tag=speed_powerup] positioned ~ ~-0.60 ~ run particle minecraft:composter ^0.60 ^ ^ 0 0 0 0.01 1
#execute at @e[tag=speed_powerup] positioned ~ ~-0.60 ~ run particle minecraft:composter ^-0.60 ^ ^ 0 0 0 0.01 1
