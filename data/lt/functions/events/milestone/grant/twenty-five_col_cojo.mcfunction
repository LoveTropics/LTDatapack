function lt:collectible/give/milestone/twenty-five_col_cojo
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_message","with":[{"translate":"lt.collectible.col_cojo.name"}]}]}
tag @s add collectibles.granted-five
scoreboard players add Collectible5 main.stats 1