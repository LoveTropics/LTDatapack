tag @s add hole_2_player
function lt:game/minigolf/core/gamemode_start
tellraw @a[tag=hole_2_player,tag=!played_golf] {"text":"Welcome to Crab Golf! Use the putters in your inventory to hit the crab into the hole! The fewer hits the better your score. You have as many hits as you need but there is a two minute time limit after which the hole will be reset. One player at a time, per hole.","color":"blue"}
tag @s add played_golf
scoreboard players set hole2hits golfGlobal 0
function lt:game/minigolf/core/clear_putters
function lt:game/minigolf/core/give_putters
execute at @e[tag=hole_2_start] run summon tropicraft:fiddler_crab ~ ~ ~ {NoGravity:1b,Silent:1b,Health:500f,Tags:["hole_2","golf_crab"],Attributes:[{Name:generic.max_health,Base:500},{Name:generic.knockback_resistance,Base:0.75},{Name:generic.movement_speed,Base:0}]}
team join anticrabcollision @e[tag=golf_crab,tag=hole_2]
function lt:game/minigolf/holes/hole_2/timer/timer_start