collectible give @s ltminigames:disguise{display:{Lore:['{"translate":"lt.milestone.item_lore","with":[{"text":"5000","color":"gold","bold":false,"italic":false}]}']},donation_goal:true,disguise:{entity:{type:"tropicraft:tropicreeper"}}}
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_message","with":[{"translate":"entity.tropicraft.tropicreeper"}]}]}
tag @s add collectibles.granted-two
scoreboard players add Collectible2 main.stats 1
