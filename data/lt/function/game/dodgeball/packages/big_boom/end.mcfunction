execute as @a[tag=dodgeball.minigame.big_boom] if score @s dodgeball.packages matches 3 run scoreboard players set @s dodgeball.packages 2
execute as @a[tag=dodgeball.minigame.big_boom] if score @s dodgeball.packages matches 1 run scoreboard players set @s dodgeball.packages 0
execute as @a[tag=dodgeball.minigame.big_boom] run clear @s tropicraft:exploding_coconut
execute as @a[tag=dodgeball.minigame.big_boom] run loot give @s loot lt:dodgeball/dodgeball
execute as @a[tag=dodgeball.minigame.big_boom] run tag @s remove dodgeball.minigame.big_boom
