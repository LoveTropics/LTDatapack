execute if entity @s[tag=team.joined] run return 1
tag @s add team.cents
tag @s add team.joined
tellraw @s {"translate":"lt.team.cents.join"}
function #lt:collectibles/team_cents
function lt:utility/team/leave
playsound create:confirm player @s
scoreboard players add TeamCents main.stats 1