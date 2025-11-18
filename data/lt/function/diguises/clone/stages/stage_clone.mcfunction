execute as @e[tag=disguises.data_entity] run function lt:utility/dummy_players/set_from_player with entity @p[tag=diguises.cloned.target]
particle minecraft:portal ~ ~ ~ 0 1 0 0.5 1000

#data modify entity @e[tag=diguises.cloned.target,limit=1] collectible.components.peekaboo:disguise.entity.tag set value {}
#data modify entity @e[tag=diguises.cloned.target,limit=1] collectible.components.peekaboo:disguise.entity.profile set from entity @e[tag=disguises.data_entity,limit=1] profile
data modify entity a72f4bba-697d-412a-b19c-96a14d9944f8 collectible.components."peekaboo:disguise".entity.profile set from entity @e[tag=disguises.data_entity,limit=1] profile

schedule function lt:diguises/clone/stages/stage_start_name_update 5t replace
# function lt:diguises/clone/stages/stage_update_names with entity @s collectible.components.peekaboo:disguise.entity.tag.profile
