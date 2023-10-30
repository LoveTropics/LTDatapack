# Feedback
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.85
execute at @e[tag=game.parkour.checkpoint,sort=nearest,limit=1] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 15 force @s
execute at @e[tag=game.parkour.checkpoint,sort=nearest,limit=1] run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.15 100 force @s

tellraw @s {"translate":"lt.game.parkour.general.message.complete_course","color": "green"}

give @s ltextras:tropicoin 20