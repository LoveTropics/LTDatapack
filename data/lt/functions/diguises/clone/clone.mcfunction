particle minecraft:portal ~ ~ ~ 0 1 0 0.5 1000
data modify entity @e[type=ltextras:collectible,tag=disguises.player.cloned,limit=1] collectible.tag.disguise.entity.tag.ProfileID set from entity @s UUID
#Todo Modify Name of Disguise (And Other Deatils?)
#Clone Sound?
tag @s add diguises.cloned.to_tp
schedule function lt:diguises/clone/after_clone 2s
