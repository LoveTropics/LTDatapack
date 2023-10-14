tag @s[gamemode=creative] add golfCreative
gamemode adventure @s[gamemode=creative]
execute as @s[tag=!playedGolf] run function lt:game/minigolf/core/first_play
function lt:game/minigolf/core/give_putters
tag @s add golfInGame
title @s times 1s 2s 1s
tag @s add playedGolf