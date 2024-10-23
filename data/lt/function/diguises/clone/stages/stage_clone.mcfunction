particle minecraft:portal ~ ~ ~ 0 1 0 0.5 1000

$data modify entity @s collectible.components.ltminigames:disguise.entity.tag set value {profile:{name:$(name)}}
#Todo Modify Name of Disguise (And Other Deatils?)

$data modify entity @s collectible.components.minecraft:lore[7] set value '[{"text":" + $(name)","color": "blue","italic": false},{"translate":"lt.collectible.player_clone.tooltip.add","with":[{"selector":"@p[tag=diguises.cloned.target]"}],"color": "blue","italic":false}]'

