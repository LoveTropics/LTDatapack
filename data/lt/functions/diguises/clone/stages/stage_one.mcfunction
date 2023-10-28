tag @s add diguises.cloned.target

particle minecraft:portal ~ ~ ~ 0 1 0 0.5 1000
execute as @e[type=ltextras:collectible,tag=disguises.player.cloned,limit=1] at @s run particle minecraft:portal ~ ~ ~ 0 1 0 0.5 1000
execute as @e[type=ltextras:collectible,tag=disguises.player.cloned,limit=1] at @s run playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..8] ~ ~ ~ 1 0.5
playsound minecraft:entity.warden.sonic_charge ambient @a[distance=..5] ~ ~ ~ 1 0.5

#Save Data
execute as @e[tag=disguises.player.sign_marker,limit=1] at @s run data modify block ~ ~ ~ front_text.messages[0] set value '[{"translate":"lt.collectible.player_clone.name","with":[{"selector":"@p[tag=diguises.cloned.target]","color":"#5ABDA3"}],"color":"#5ABDA3","italic":false}]'
execute as @e[tag=disguises.player.sign_marker,limit=1] at @s run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":" + ","color":"blue","italic":false},{"translate":"lt.collectible.player_clone.tooltip.add","with":[{"selector":"@p[tag=diguises.cloned.target]"}],"color":"blue","italic":false}]'
schedule function lt:diguises/clone/stages/stage_two 20t
schedule function lt:diguises/clone/stages/stage_three 30t
