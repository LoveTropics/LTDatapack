collectible give @s ltminigames:disguise{donation_goal:true,disguise:{entity:{type:"minecraft:fox"}}}
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_level_four"}]}
tag @s add collectibles.granted-four
scoreboard players add Collectible4 main.stats 1
