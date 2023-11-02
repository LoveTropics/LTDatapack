# Feedback
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.85
execute at @e[tag=game.parkour.checkpoint,sort=nearest,limit=1] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 15 force @s
execute at @e[tag=game.parkour.checkpoint,sort=nearest,limit=1] run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.15 100 force @s

tellraw @s {"translate":"lt.game.parkour.general.message.complete_course","color": "green"}

give @s ltextras:tropicoin 20

# Set players checkpoint score to that of the final checkpoint, ensuring even if prior checkpoints were skipped, the player only gets 20 tropicoins for the course.
scoreboard players operation @s parkour.checkpoint = @e[tag=game.parkour.last_checkpoint,distance=..5,limit=1] parkour.checkpoint_id

#Stats
execute if entity @s[tag=parkour.crystal_cave] run scoreboard players add CrystalCave main.stats 1
execute if entity @s[tag=parkour.obstacle_cave] run scoreboard players add ObstacleCave main.stats 1

#Unlocks
execute if entity @s[tag=parkour.crystal_cave] run function lt:collectible/give/hat/frog
