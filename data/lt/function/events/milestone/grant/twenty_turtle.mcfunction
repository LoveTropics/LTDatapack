function lt:collectible/give/milestone/twenty_turtle
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_message","with":[{"translate":"entity.tropicraft.turtle"}]}]}
tag @s add collectibles.granted-four
scoreboard players add Collectible4 main.stats 1
