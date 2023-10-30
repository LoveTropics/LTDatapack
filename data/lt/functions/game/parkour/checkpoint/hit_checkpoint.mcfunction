# Feedback
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 2
execute at @e[tag=game.parkour.checkpoint,sort=nearest,limit=1] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 15 force @s

# Increment players checkpoint score
scoreboard players add @s parkour.checkpoint 1

# Win con
execute if entity @e[type=marker,tag=game.parkour.last_checkpoint,distance=..5] run function lt:game/parkour/checkpoint/hit_last_checkpoint