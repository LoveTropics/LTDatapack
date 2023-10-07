summon tropicraft:fiddler_crab ~ ~ ~ {RollingDownTown:1,Silent:1b,Health:500f,Tags:["golf_crab"],Attributes:[{Name:generic.max_health,Base:500},{Name:generic.knockback_resistance,Base:0.75},{Name:generic.movement_speed,Base:0}]}
attribute @e[type=tropicraft:fiddler_crab,limit=1,distance=..0.5] forge:step_height_addition base set -1
team join anticrabcollision @e[tag=golf_crab,distance=..0.5]