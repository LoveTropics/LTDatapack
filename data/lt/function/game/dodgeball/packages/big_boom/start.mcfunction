tag @s add dodgeball.minigame.big_boom
execute if score @s dodgeball.packages matches 0 run scoreboard players set @s dodgeball.packages 1
execute if score @s dodgeball.packages matches 2 run scoreboard players set @s dodgeball.packages 3
clear @s tropicraft:exploding_coconut
loot give @s loot lt:dodgeball/dodgeball
schedule function lt:game/dodgeball/packages/big_boom/end 60s replace
