execute if score @s r.o.p_placement matches 1 run tp @s @e[tag=turtle_race.one_way.marker.podium.1,limit=1,sort=nearest]
execute if score @s r.o.p_placement matches 2 run tp @s @e[tag=turtle_race.one_way.marker.podium.2,limit=1,sort=nearest]
execute if score @s r.o.p_placement matches 3 run tp @s @e[tag=turtle_race.one_way.marker.podium.3,limit=1,sort=nearest]
execute if score @s r.o.p_placement matches 4.. run tp @s @e[tag=turtle_race.one_way.marker.podium.losers,limit=1,sort=nearest]
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 2 1.2
scoreboard players set @s r.o.p_tp_delay -1