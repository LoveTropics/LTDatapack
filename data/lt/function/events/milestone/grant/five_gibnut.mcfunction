function lt:collectible/give/milestone/five_gibnut
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_message","with":[{"translate":"entity.tropicraft.gibnut"}]}]}
tag @s add collectibles.granted-one
scoreboard players add Collectible1 main.stats 1