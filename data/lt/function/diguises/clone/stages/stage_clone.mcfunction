$execute as @e[tag=disguises.data_entity] run function lt:utility/dummy_players/set_from_player {"UUID":$(UUID)}
particle minecraft:portal ~ ~ ~ 0 1 0 0.5 1000

data modify entity @s collectible.components.ltminigames:disguise.entity.tag set value {}
data modify entity @s collectible.components.ltminigames:disguise.entity.tag.profile set from entity @e[tag=disguises.data_entity,limit=1] profile

function lt:diguises/clone/stages/stage_update_names with entity @s collectible.components.ltminigames:disguise.entity.tag.profile



# $data modify entity @s collectible.components.minecraft:lore[7] set value '[{"text":" + $(name)","color": "blue","italic": false},{"translate":"lt.collectible.player_clone.tooltip.add","with":[{"selector":"@p[tag=diguises.cloned.target]"}],"color": "blue","italic":false}]'

