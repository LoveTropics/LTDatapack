execute as @a[tag=dodgeball.minigame.big_boom] if score @s dodgeball.packages matches 3 run scoreboard players set @s dodgeball.packages 2
execute as @a[tag=dodgeball.minigame.big_boom] if score @s dodgeball.packages matches 1 run scoreboard players set @s dodgeball.packages 0
tag @s remove dodgeball.minigame.big_boom
