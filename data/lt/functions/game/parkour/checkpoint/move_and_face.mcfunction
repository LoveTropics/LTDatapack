tp @e[tag=game.parkour.checkpoint,limit=1,sort=nearest,distance=..4] @s
execute if entity @e[tag=game.parkour.checkpoint,distance=..4] run tellraw @a "Checkpoint teleported to you and is now facing the direction you were"
execute unless entity @e[tag=game.parkour.checkpoint,distance=..4] run tellraw @a "No nearby checkpoint found"