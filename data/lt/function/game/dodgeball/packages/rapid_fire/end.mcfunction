execute as @a[tag=dodgeball.minigame.rapid_fire] if score @s dodgeball.packages matches 3 run scoreboard players set @s dodgeball.packages 1
execute as @a[tag=dodgeball.minigame.rapid_fire] if score @s dodgeball.packages matches 2 run scoreboard players set @s dodgeball.packages 0
execute as @a[tag=dodgeball.minigame.rapid_fire] run clear @s tropicraft:exploding_coconut
execute as @a[tag=dodgeball.minigame.rapid_fire] run loot give @s loot lt:dodgeball/dodgeball
execute as @a[tag=dodgeball.minigame.rapid_fire] run tag @s remove dodgeball.minigame.rapid_fire
