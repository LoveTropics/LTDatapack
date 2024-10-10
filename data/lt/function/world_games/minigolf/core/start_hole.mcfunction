# Give player tag showing what hole they are on
$tag @s add hole$(hole)Player
$attribute @s minecraft:player.submerged_mining_speed base set $(hole)
# Makes creavite players go to survival
tag @s[gamemode=creative] add golfCreative
gamemode adventure @s[gamemode=creative]
#execute as @s[tag=!playedGolf] run function lt:game/minigolf/core/first_play
tag @s add golfInGame
title @s times 1s 2s 1s
# Summon the crab an tags it
$execute as @e[tag=hole$(hole)Start] at @s run summon tropicraft:fiddler_crab ~ ~ ~ {RollingDownTown:true,Silent:true,Health:500f,Tags:["golfCrab","hole$(hole)Crab"],ForcedAge:$(hole),attributes:[{id:"minecraft:generic.max_health",base:500},{id:"minecraft:generic.knockback_resistance",base:0.75},{id:"minecraft:generic.movement_speed",base:0}]}
$team join anticrabcollision @e[tag=hole$(hole)Crab]
$data modify entity @e[tag=hole$(hole)Crab,limit=1] Owner set from entity @p[tag=hole$(hole)Player] UUID
$scoreboard players set @e[tag=hole$(hole)Crab] golf.timer 120
$scoreboard players set @e[tag=hole$(hole)Crab] golf.hits 0

give @s minecraft:stone_hoe[custom_name='{"translate":"lt.golf.gentle_putter","color":"light_purple","italic":false}',lore=['{"translate":"lt.golf.gentle_putter.info","color":"white"}'],ltextras:undroppable={},hide_additional_tooltip={},minecraft:custom_data={lt:golf},unbreakable={},enchantments={levels:{knockback:1},show_in_tooltip:false}]
give @s minecraft:golden_hoe[custom_name='{"translate":"lt.golf.soft_putter","color":"light_purple","italic":false}',lore=['{"translate":"lt.golf.soft_putter.info","color":"white"}'],ltextras:undroppable={},hide_additional_tooltip={},minecraft:custom_data={lt:golf},unbreakable={},enchantments={levels:{knockback:2},show_in_tooltip:false}]
give @s minecraft:iron_hoe[custom_name='{"translate":"lt.golf.putter","color":"light_purple","italic":false}',lore=['{"translate":"lt.golf.putter.info","color":"white"}'],ltextras:undroppable={},hide_additional_tooltip={},minecraft:custom_data={lt:golf},unbreakable={},enchantments={levels:{knockback:3},show_in_tooltip:false}]
give @s minecraft:diamond_hoe[custom_name='{"translate":"lt.golf.powerful_driver","color":"light_purple","italic":false}',lore=['{"translate":"lt.golf.powerful_driver.info","color":"white"}'],ltextras:undroppable={},hide_additional_tooltip={},minecraft:custom_data={lt:golf},unbreakable={},enchantments={levels:{knockback:4},show_in_tooltip:false}]
give @s minecraft:netherite_hoe[custom_name='{"translate":"lt.golf.potent_driver","color":"light_purple","italic":false}',lore=['{"translate":"lt.golf.potent_driver.info","color":"white"}'],ltextras:undroppable={},hide_additional_tooltip={},minecraft:custom_data={lt:golf},unbreakable={},enchantments={levels:{knockback:5},show_in_tooltip:false}]
