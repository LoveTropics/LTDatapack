tellraw @s [{"text":"> ","color":"dark_gray"},{"text":"Teleport Complete!","color":"#77A12F"}]

# Location : TEMPLATE
#tp @s[tag=map.player.looking.TEMPLATE] XX YY ZZ YAW PITCH
tp @s[tag=map.player.looking.concert_island] -441 106 -549 -90 0
tp @s[tag=map.player.looking.research_centre] 191 112 637 0 0
tp @s[tag=map.player.looking.tropiland] 507 103 187 -135 -20
tp @s[tag=map.player.looking.town_square] 850 106 -180 -180 0
tp @s[tag=map.player.looking.shrimp_farm] -596 97 -78 0 0
tp @s[tag=map.player.looking.scuba_centre] -313 97 186 -130 0
tp @s[tag=map.player.looking.palm_plantation] -361 98 -220 0 0
tp @s[tag=map.player.looking.boat_station_b] 284 102 32 0 0
tp @s[tag=map.player.looking.boat_station_a] 69 102 -10 0 0



execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 2 1
