collectible give @s ltminigames:disguise{donation_goal:true,disguise:{entity:{type:"tropicraft:spider_monkey"}}}
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_level_three"}]}
tag @s add collectibles.granted-three
scoreboard players add Collectible3 main.stats 1

