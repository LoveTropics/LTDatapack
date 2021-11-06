summon minecraft:pillager ~ ~1.5 ~ {Tags:["map.marker.hit_tracker"],Size:1b,NoGravity:1b,Silent:1b,NoAI:1b}
effect give @e[tag=map.marker.hit_tracker] invisibility 36000 80 true
effect give @e[tag=map.marker.hit_tracker] resistance 36000 80 true
effect give @s instant_health 5 5 true
team join noCollision @e[tag=map.marker.hit_tracker]

tag @s add map_gamemode
tag @s[gamemode=adventure,tag=!map.player] add map.player.gamemode.adventure
tag @s[gamemode=creative,tag=!map.player] add map.player.gamemode.creative
tag @s[gamemode=spectator,tag=!map.player] add map.player.gamemode.spectator
tag @s[gamemode=survival,tag=!map.player] add map.player.gamemode.survival

gamemode adventure
