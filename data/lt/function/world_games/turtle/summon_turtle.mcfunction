execute at @e[tag=turtle_race_start,sort=random,limit=1] run summon tropicraft:turtle ~ ~ ~ {Invulnerable:true,NoAI:true,attributes:[{base:1.65,id:"minecraft:movement_speed"}],NoBrakesOnThisTrain:false,DeathLootTable:"minecraft:empty",Team:"anticrabcollision",remove_on_dismount:true,Tags:["remove_on_dismount","race_turtle"]}
ride @s mount @e[type=tropicraft:turtle,tag=race_turtle,tag=!used_turtle,sort=random,limit=1] true
execute as vehicle run tag @s add used_turtle 
