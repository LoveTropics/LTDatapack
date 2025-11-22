execute if entity @s[tag=team.joined] run return 1
tag @s add team.no_cents
tag @s add team.joined
tellraw @s {"translate":"lt.team.no_cents.join"}
spawn
playsound create:confirm player @s
collectible give @a[tag=team.no_cents] lt:team_no_cents/cent_sensors
scoreboard players add TeamNoCents main.stats 1
