$execute if entity @s[tag=team.cents] run return run function lt:utility/team/no_switching {"team":"$(team)"}
$execute if entity @s[tag=team.no_cents] run return run function lt:utility/team/no_switching {"team":"$(team)"}
tag @s remove team.joined
tag @s remove team.cents
tag @s remove team.no_cents
$tag @s add team.$(team)
tag @s add team.joined
$title @s subtitle {"translate":"lt.team.$(team).join","color":"gold"}
title @s title " "
$scoreboard players add $(team) main.stats 1
tp @s -219.5 133 -26 -180 0
function lt:utility/team/update_text
playsound ltminigames:coins
