scoreboard players reset @s[tag=!collectible.rocket_boots.equipped] collectible.rocket_boots.jump
tag @s add collectible.rocket_boots.equipped
execute if score @s collectible.rocket_boots.jump matches 1.. run function lt:collectible/mechanic/rocket_boots/launch
execute if score @s collectible.rocket_boots.time matches ..1 run effect clear @s levitation
execute if score @s collectible.rocket_boots.time matches 0.. run particle minecraft:small_flame ~ ~ ~ 0 -0.05 0 0.05 8 normal
execute if score @s collectible.rocket_boots.time matches 0.. run particle minecraft:smoke ~ ~ ~ 0.05 -0.05 0.05 0.05 7 normal
execute if score @s collectible.rocket_boots.time matches 0 run function lt:collectible/mechanic/rocket_boots/reset

# Remove 1 time per tick
scoreboard players remove @s[scores={collectible.rocket_boots.time=1..}] collectible.rocket_boots.time 1