function lt:collectible/give/milestone/fifteen_spider_monkey
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_message","with":[{"translate":"entity.tropicraft.spider_monkey"}]}]}
tag @s add collectibles.granted-three
scoreboard players add Collectible3 main.stats 1

