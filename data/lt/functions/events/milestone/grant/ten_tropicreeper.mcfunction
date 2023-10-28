function lt:collectible/give/milestone/ten_tropicreeper
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_message","with":[{"translate":"entity.tropicraft.tropicreeper"}]}]}
tag @s add collectibles.granted-two
scoreboard players add Collectible2 main.stats 1
