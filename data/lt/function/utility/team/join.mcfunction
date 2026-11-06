tag @s remove team.joined
tag @s remove team.cents
tag @s remove team.no_cents
$tag @s add team.$(team)
tag @s add team.joined
$title @s subtitle {"translate":"lt.team.$(team).join","color":"$(color)"}
title @s title " "
$scoreboard players add $(team) main.stats 1
warp lt:spawn
playsound ltminigames:coins
