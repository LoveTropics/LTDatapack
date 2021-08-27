tellraw @s [{"text":">>> ","color":"yellow"},{"text":"Teleport Complete!","color":"green"}]

# Location 1
tp @s[tag=at_map_looking_boardwalk] -951 132 2317 90 0
# Location 2
tp @s[tag=at_map_looking_spleef] -804 128 2647 12 -15
# Location 3
tp @s[tag=at_map_looking_treasure_hunt] -728 128 2606 -90 -25
# Location 4
tp @s[tag=at_map_looking_bee_village] -1398 165 2342
tp @s[tag=at_map_looking_free_build_2] -875 142 2500 75 2
tp @s[tag=at_map_looking_free_build_1] -977 129 2215 145 0
tp @s[tag=at_map_looking_turtle_race_normal] -937 130 2242 90 0
tp @s[tag=at_map_looking_turtle_race_arcade] -681 128 2447 0 -25
tp @s[tag=at_map_looking_spawn_donators_dome] -1242 69 2638 -45 -10
tp @s[tag=at_map_looking_spawn_map_dome] -1274 70 2667 -180 0
tp @s[tag=at_map_looking_spawn_monument_dome] -1304 70 2650 140 55
tp @s[tag=at_map_looking_spawn_tower] -1208 128 2539 -90 0
tp @s[tag=at_map_looking_mountain_mansion] -925 163 2673 -70 0

execute as @s at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~
