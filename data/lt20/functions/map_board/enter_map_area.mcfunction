summon pillager ~ ~1 ~ {Tags:["hit_track"],NoGravity:1b,Size:1b,Silent:1b,NoAI:1b}
effect give @e[tag=hit_track] invisibility 36000 80 true
effect give @e[tag=hit_track] resistance 36000 80 true
effect give @s instant_health 5 5 true
team join noCollision @e[tag=hit_track]

tag @s add map_gamemode
tag @s[gamemode=adventure,tag=!at_map] add map_was_adventure
tag @s[gamemode=creative,tag=!at_map] add map_was_creative
tag @s[gamemode=spectator,tag=!at_map] add map_was_spectator
tag @s[gamemode=survival,tag=!at_map] add map_was_survival

gamemode adventure
