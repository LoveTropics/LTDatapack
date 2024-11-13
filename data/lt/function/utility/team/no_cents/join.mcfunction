execute if entity @s[tag=team.joined] run return 1
tag @s add team.no_cents
tag @s add team.joined
tellraw @s {"translate":"lt.team.no_cents.join"}
spawn
playsound create:confirm player @s
scoreboard players add TeamNoCents main.stats 1