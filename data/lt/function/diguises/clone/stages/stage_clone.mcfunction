execute as @e[type=ltextras:collectible,tag=disguises.player.cloned,limit=1] at @s run particle minecraft:portal ~ ~ ~ 0 1 0 0.5 1000

data modify entity @e[type=ltextras:collectible,tag=disguises.player.cloned,limit=1] collectible.tag.disguise.entity.tag.ProfileID set from entity @p[tag=diguises.cloned.target] UUID
#Todo Modify Name of Disguise (And Other Deatils?)

execute as @e[tag=disguises.player.sign_marker,limit=1] at @s run data modify entity @e[type=ltextras:collectible,tag=disguises.player.cloned,limit=1] collectible.tag.display.Name set from block ~ ~ ~ front_text.messages[0]
execute as @e[tag=disguises.player.sign_marker,limit=1] at @s run data modify entity @e[type=ltextras:collectible,tag=disguises.player.cloned,limit=1] collectible.tag.display.Lore[7] set from block ~ ~ ~ front_text.messages[1]

