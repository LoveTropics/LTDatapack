collectible give @s ltminigames:disguise{donation_goal:true,disguise:{entity:{type:"tropicraft:tropicreeper"}}}
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_level_two"}]}
tag @s add collectibles.granted-two
scoreboard players add Collectible2 main.stats 1
