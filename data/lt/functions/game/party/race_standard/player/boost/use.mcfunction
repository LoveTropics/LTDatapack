tellraw @s [{"text":">>> ","color":"gray"},{"text":"Boost Activated!","color":"aqua"}]
effect give @s speed 50 8 true
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 2 0.5
playsound minecraft:entity.firework_rocket.blast_far master @s ~ ~ ~ 2 1
tag @s remove turtle_race.standard.player.boost_available
scoreboard players set @s r.s.p_boost_time 500

execute as @e[tag=turtle_race.standard.entity.turtle,sort=nearest,limit=1,distance=..2] at @s run function lt:game/party/race_standard/turtle/boost/add
clear @s
execute positioned ~ ~1.25 ~ run particle minecraft:totem_of_undying ^ ^ ^3 0.2 0.2 0.2 1 100 normal @a[distance=..50]
