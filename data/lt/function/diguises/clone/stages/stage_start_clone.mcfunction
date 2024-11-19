execute if score @s disguise.cloneing matches 1.. run tellraw @s {"translate":"lt.disguise.already_cloned","color":"red"}
execute if score @s disguise.cloneing matches 1.. run return 1
scoreboard players reset * disguise.cloneing
scoreboard players set @s disguise.cloneing 1
tag @s add diguises.cloned.target
scoreboard players add @s stats.disguise 1
scoreboard players add Clones main.stats 1

particle minecraft:portal ~ ~ ~ 0 1 0 0.5 250
#Todo Cry that this is hardcoded
fill -294 55 79 -294 54 79 minecraft:white_stained_glass_pane
execute as @e[type=ltextras:collectible,tag=disguises.player.cloned,limit=1] at @s run particle minecraft:portal ~ ~ ~ 0 1 0 0.5 500
execute as @e[type=ltextras:collectible,tag=disguises.player.cloned,limit=1] at @a[distance=..20] run playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..8] ~ ~ ~ 1 0.5
playsound minecraft:entity.warden.sonic_charge ambient @a[distance=..5] ~ ~ ~ 1 0.5

#Save Data
schedule function lt:diguises/clone/stages/stage_clone 20t
schedule function lt:diguises/clone/stages/stage_tp 30t
schedule function lt:diguises/clone/stages/stage_reset 60s
