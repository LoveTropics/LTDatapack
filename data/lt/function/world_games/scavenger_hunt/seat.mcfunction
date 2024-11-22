execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:white_seat if score @s sh_seat matches 0 run playsound minecraft:block.note_block.chime voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:orange_seat if score @s sh_seat matches 1 run playsound minecraft:block.note_block.chime voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:magenta_seat if score @s sh_seat matches 2 run playsound minecraft:block.note_block.chime voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:light_blue_seat if score @s sh_seat matches 3 run playsound minecraft:block.note_block.chime voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:yellow_seat if score @s sh_seat matches 4 run playsound minecraft:block.note_block.chime voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:lime_seat if score @s sh_seat matches 5 run playsound minecraft:block.note_block.chime voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:pink_seat if score @s sh_seat matches 6 run playsound minecraft:block.note_block.chime voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:gray_seat if score @s sh_seat matches 7 run playsound minecraft:entity.enderman.teleport voice @s

execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:white_seat unless block ~ ~1 ~ ltextras:orange_seat if score @s sh_seat matches 1 run playsound minecraft:block.note_block.bass voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:magenta_seat unless block ~ ~1 ~ ltextras:orange_seat if score @s sh_seat matches 2 run playsound minecraft:block.note_block.bass voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:magenta_seat unless block ~ ~1 ~ ltextras:light_blue_seat if score @s sh_seat matches 3 run playsound minecraft:block.note_block.bass voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:light_blue_seat unless block ~ ~1 ~ ltextras:yellow_seat if score @s sh_seat matches 4 run playsound minecraft:block.note_block.bass voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:yellow_seat unless block ~ ~1 ~ ltextras:lime_seat if score @s sh_seat matches 5 run playsound minecraft:block.note_block.bass voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:lime_seat unless block ~ ~1 ~ ltextras:pink_seat if score @s sh_seat matches 6 run playsound minecraft:block.note_block.bass voice @s
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:pink_seat unless block ~ ~1 ~ ltextras:gray_seat if score @s sh_seat matches 7 run playsound minecraft:block.note_block.bass voice @s

execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:white_seat run scoreboard players set @s sh_seat 1
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:orange_seat if score @s sh_seat matches 1 run scoreboard players set @s sh_seat 2
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:magenta_seat if score @s sh_seat matches 2 run scoreboard players set @s sh_seat 3
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:light_blue_seat if score @s sh_seat matches 3 run scoreboard players set @s sh_seat 4
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:yellow_seat if score @s sh_seat matches 4 run scoreboard players set @s sh_seat 5
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:lime_seat if score @s sh_seat matches 5 run scoreboard players set @s sh_seat 6
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:pink_seat if score @s sh_seat matches 6 run scoreboard players set @s sh_seat 7
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s if block ~ ~1 ~ ltextras:gray_seat if score @s sh_seat matches 7 run scoreboard players set @s sh_seat 8

execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:white_seat unless block ~ ~1 ~ ltextras:orange_seat if score @s sh_seat matches 1 run scoreboard players set @s sh_seat 0
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:magenta_seat unless block ~ ~1 ~ ltextras:orange_seat if score @s sh_seat matches 2 run scoreboard players set @s sh_seat 0
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:magenta_seat unless block ~ ~1 ~ ltextras:light_blue_seat if score @s sh_seat matches 3 run scoreboard players set @s sh_seat 0
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:light_blue_seat unless block ~ ~1 ~ ltextras:yellow_seat if score @s sh_seat matches 4 run scoreboard players set @s sh_seat 0
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:yellow_seat unless block ~ ~1 ~ ltextras:lime_seat if score @s sh_seat matches 5 run scoreboard players set @s sh_seat 0
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:lime_seat unless block ~ ~1 ~ ltextras:pink_seat if score @s sh_seat matches 6 run scoreboard players set @s sh_seat 0
execute as @e[tag=sh_seat] at @s as @e[type=ltextras:seat,distance=..20] on passengers at @s unless block ~ ~1 ~ ltextras:pink_seat unless block ~ ~1 ~ ltextras:gray_seat if score @s sh_seat matches 7 run scoreboard players set @s sh_seat 0


execute as @e[tag=sh_seat] at @s as @a[distance=..20] if score @s sh_seat matches 8 run scoreboard players set @s sh_seat 0
execute as @e[tag=sh_seat] at @s as @a[distance=..20] if score @s sh_seat matches 8 run fill -60 136 -73 -60 134 -71 air
schedule function lt:world_games/scavenger_hunt/set_block 20s