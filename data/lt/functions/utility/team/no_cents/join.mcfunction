tag @s add team.cents
tag @s add team.joined
tellraw @s {"translate":"lt.team.no_cents.join"}
function #lt:collectibles/team_no_cents
function lt:utility/team/leave
playsound create:confirm player @s
scoreboard players add TeamNoCents main.stats 1