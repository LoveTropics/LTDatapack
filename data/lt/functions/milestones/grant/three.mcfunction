collectible give @s ltminigames:disguise{display:{Lore:['{"translate":"lt.milestone.item_lore","with":[{"text":"5000","color":"gold","bold":false,"italic":false}]}']},donation_goal:true,disguise:{entity:{type:"tropicraft:spider_monkey"}}}
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_message","with":[{"translate":"entity.tropicraft.spider_monkey"}]}]}
tag @s add collectibles.granted-three
scoreboard players add Collectible3 main.stats 1

