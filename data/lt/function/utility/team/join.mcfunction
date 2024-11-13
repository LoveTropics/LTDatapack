tag @s remove team.joined
tag @s remove team.cents
tag @s remove team.no_cents
$function lt:collectible/team/clear {"team":"$(team)"}
$function lt:collectible/team/give {"team":"$(team)"}
$tag @s add team.$(team)
tag @s add team.joined
$tellraw @s {"translate":"lt.team.$(team).join"}
$scoreboard players add $(team) main.stats 1
spawn