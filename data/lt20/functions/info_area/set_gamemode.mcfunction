tag @s add info_area_gamemode
tag @s[gamemode=adventure,tag=!at_map] add info_area_was_adventure
tag @s[gamemode=creative,tag=!at_map] add info_area_was_creative
tag @s[gamemode=spectator,tag=!at_map] add info_area_was_spectator
tag @s[gamemode=survival,tag=!at_map] add info_area_was_survival
effect give @s saturation 5 5 true
gamemode adventure
effect give @s instant_health 5 5 true
title @s actionbar "Punch the glass blocks to recieve info about that area!"
