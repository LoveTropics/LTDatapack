tag @s add team.cents
tell @s {"translate":"lt.team.no_cents.join"}
function lt:utility/team/leave
playsound create:confirm player @s
scoreboard players add TeamCents main.stats 1