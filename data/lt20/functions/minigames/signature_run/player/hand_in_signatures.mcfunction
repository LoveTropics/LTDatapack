title @s times 0 35 5
title @s title [{"text":"★ ","color":"blue","bold":true},{"score":{"name":"@s","objective":"PlayerSigs"},"color":"blue","bold":true},{"text":" ★","color":"blue","bold":true}]
title @s subtitle {"text":"| Signatures Handed In |","color":"yellow","bold":true}
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 2
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 15 1
execute at @s run particle minecraft:totem_of_undying ~ ~2 ~ 0 0 0 0.25 50 force @s
scoreboard players operation TotalSigs SignatureGlobal += @s PlayerSigs
scoreboard players operation @s PersonalSigs += @s PlayerSigs
tellraw @a [{"selector":"@s","color":"green"},{"text":" just turned in ","color":"yellow"},{"score":{"name":"@s","objective":"PlayerSigs"},"color":"white","bold":"true"},{"text":" signatures!","color":"yellow"}]
tellraw @a [{"text":" This brings the total number of signatures collected to: ","color":"gray"},{"score":{"name":"TotalSigs","objective":"SignatureGlobal"},"color":"white"},{"text":" and their personal signature total to ","color":"gray"},{"score":{"name":"@s","objective":"PersonalSigs"},"color":"gray"}]
scoreboard players set @s PlayerSigs 0
tag @s remove PlayerInteracted
