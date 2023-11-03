execute if score @s disguise.cloneing matches 1.. run tellraw @s {"translate":"lt.disguise.already_cloned","color":"red"}
execute if score @s disguise.cloneing matches 1.. run return 1
data merge entity @e[tag=disguises.player.text,limit=1,sort=nearest] {text:'{"color":"#480073","text":"Ⓧ"}'}
scoreboard players reset * disguise.cloneing
scoreboard players set @s disguise.cloneing 1
tag @s add diguises.cloned.target
scoreboard players add @s stats.disguise 1
scoreboard players add Clones main.stats 1

particle minecraft:portal ~ ~ ~ 0 1 0 0.5 250
#Todo Cry that this is hardcoded
clone 2172 119 2615 2172 120 2615 2170 122 2615
execute as @e[type=ltextras:collectible,tag=disguises.player.cloned,limit=1] at @a[distance=..20] run particle minecraft:portal ~ ~ ~ 0 1 0 0.5 500
execute as @e[type=ltextras:collectible,tag=disguises.player.cloned,limit=1] at @a[distance=..20] run playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..8] ~ ~ ~ 1 0.5
playsound minecraft:entity.warden.sonic_charge ambient @a[distance=..5] ~ ~ ~ 1 0.5

#Save Data
execute as @e[tag=disguises.player.sign_marker,limit=1] at @s run data modify block ~ ~ ~ front_text.messages[0] set value '[{"translate":"lt.collectible.player_clone.name","with":[{"selector":"@p[tag=diguises.cloned.target]","color":"#5ABDA3"}],"color":"#5ABDA3","italic":false}]'
execute as @e[tag=disguises.player.sign_marker,limit=1] at @s run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":" + ","color":"blue","italic":false},{"translate":"lt.collectible.player_clone.tooltip.add","with":[{"selector":"@p[tag=diguises.cloned.target]"}],"color":"blue","italic":false}]'
schedule function lt:diguises/clone/stages/stage_clone 20t
schedule function lt:diguises/clone/stages/stage_tp 30t
schedule function lt:diguises/clone/stages/stage_reset 60s
