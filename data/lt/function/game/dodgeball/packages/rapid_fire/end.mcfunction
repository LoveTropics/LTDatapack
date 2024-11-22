execute as @a[tag=dodgeball.minigame.rapid_fire] if score @s dodgeball.packages matches 3 run scoreboard players set @s dodgeball.packages 1
execute as @a[tag=dodgeball.minigame.rapid_fire] if score @s dodgeball.packages matches 2 run scoreboard players set @s dodgeball.packages 0
tag @s remove dodgeball.minigame.rapid_fire
