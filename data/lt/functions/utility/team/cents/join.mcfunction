tag @s add team.cents
tell @s {"translate":"lt.team.cents.join"}
function lt:utility/team/leave
playsound create:confirm player @s
scoreboard players add TeamNoCents main.stats 1