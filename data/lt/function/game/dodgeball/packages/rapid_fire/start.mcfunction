tag @s add dodgeball.minigame.rapid_fire
execute if score @s dodgeball.packages matches 0 run scoreboard players set @s dodgeball.packages 2
execute if score @s dodgeball.packages matches 1 run scoreboard players set @s dodgeball.packages 3
clear @s tropicraft:exploding_coconut
loot give @s loot lt:dodgeball/dodgeball
schedule function lt:game/dodgeball/packages/rapid_fire/end 30s replace
