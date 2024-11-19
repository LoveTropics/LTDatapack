effect give @s levitation 5 25 true
tag @s add map.launch_pad.is_launching
scoreboard players set @s map.launch_pad.lev_time 4
playsound minecraft:entity.breeze.shoot master @s ~ ~ ~ 0.3 1.5 1
playsound minecraft:entity.breeze.charge master @s ~ ~ ~ 0.7 1 1
particle minecraft:gust ~ ~0.2 ~ 0.05 0 0.05 0 2 force @a[distance=..30]
particle minecraft:small_gust ~ ~0.2 ~ 0.4 0 0.4 0 6 force @a[distance=..30]