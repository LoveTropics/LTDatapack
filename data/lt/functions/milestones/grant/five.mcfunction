collectible give @s ltminigames:disguise{display:{Name:'{"translate":"item.ltminigames.disguise.entity","with":[{"translate":"lt.milestone.colcojo"}]}',Lore:['{"translate":"lt.milestone.item_lore","with":[{"text":"5000","color":"gold","bold":false,"italic":false}]}']},donation_goal:true,disguise:{entity:{type:"dummyplayers:dummy_player",tag:{ProfileID: [I; -1505211345, -855292401, -2116995351, 764383134], NoBasePlate:true,ShowArms:1,ArmorItems:[{},{},{},{id:"ltminigames:mob_hat",Count:1b,tag:{entity: {type: "tropicraft:failgull"}}}],HandItems:[{id:"minecraft:cookie",Count:1b},{id:"minecraft:cookie",Count:1b}],Pose:{LeftArm:[0f,261f,268f],RightArm:[0f,0f,91f]}}}}}
tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_message","with":[{"translate":"lt.milestone.colcojo"}]}]}
tag @s add collectibles.granted-five
scoreboard players add Collectible5 main.stats 1