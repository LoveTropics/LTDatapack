collectible give @s ltminigames:disguise{donation_goal:true,disguise:{entity:{type:"tropicraft:gibnut"}}}
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_level_one"}]}
tag @s add collectibles.granted-one
scoreboard players add Collectible1 main.stats 1