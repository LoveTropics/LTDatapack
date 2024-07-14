# Fail detection
execute as @a[tag=parkour.player] at @s if block ~ ~ ~ ltextras:passable_barrier run function lt:game/parkour/fail

# Checkpoint Portal
execute at @e[type=marker,tag=game.parkour.checkpoint_portal] run particle minecraft:scrape ~ ~0.65 ~ 0.2 0.4 0.2 0.25 1 force @a[distance=..10]
execute at @e[type=marker,tag=game.parkour.return_portal] run particle minecraft:wax_on ~ ~0.65 ~ 0.2 0.4 0.2 0.25 1 force @a[distance=..10]
execute as @a[tag=parkour.player] at @s if entity @e[tag=game.parkour.checkpoint_portal,distance=..0.75] run function lt:game/parkour/checkpoint/find_checkpoint
execute as @a[tag=parkour.player] at @s if entity @e[tag=game.parkour.return_portal,distance=..0.75] run function lt:game/parkour/checkpoint/return_player

# Actionbar reminder
title @a[tag=parkour.player] actionbar {"translate":"lt.game.parkour.general.actionbar.notify","color":"yellow"} 

# Checkpoint detection
execute as @a[tag=parkour.player] at @s if entity @e[type=marker,tag=game.parkour.checkpoint,tag=!game.parkour.first_checkpoint,distance=..1.5] if score @s parkour.checkpoint < @e[type=marker,tag=game.parkour.checkpoint,limit=1,sort=nearest] parkour.checkpoint_id run function lt:game/parkour/checkpoint/hit_checkpoint