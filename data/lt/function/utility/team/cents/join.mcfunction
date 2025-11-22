execute if entity @s[tag=team.joined] run return 1
tag @s add team.cents
tag @s add team.joined
tellraw @s {"translate":"lt.team.cents.join"}
spawn
playsound create:confirm player @s
collectible give @a[tag=team.cents] lt:team_cents/nonsense_sensors
scoreboard players add TeamCents main.stats 1
