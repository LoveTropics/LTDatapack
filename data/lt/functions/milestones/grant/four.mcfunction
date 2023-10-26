collectible give @s ltminigames:disguise{display:{Lore:['{"translate":"lt.milestone.item_lore","with":[{"text":"20000","color":"gold","bold":false,"italic":false}]}']},donation_goal:true,disguise:{entity:{type:"tropicraft:turtle"}}}
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_message","with":[{"translate":"entity.tropicraft.turtle"}]}]}
tag @s add collectibles.granted-four
scoreboard players add Collectible4 main.stats 1
