tag @s add team.cents
tellraw @s {"translate":"lt.team.cents.join"}
function #lt:collectibles/team_cents
function lt:utility/team/leave
playsound create:confirm player @s
scoreboard players add TeamNoCents main.stats 1