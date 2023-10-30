tag @s add parkour.player.looking_for_checkpoint

# Crystal cave check
execute if entity @s[tag=parkour.crystal_cave] run execute as @e[tag=game.parkour.checkpoint,tag=game.parkour.crystal_cave] at @s if score @s parkour.checkpoint_id = @a[tag=parkour.player,tag=parkour.player.looking_for_checkpoint,limit=1] parkour.checkpoint run tp @a[tag=parkour.player,tag=parkour.player.looking_for_checkpoint,limit=1] @s

# Golf check

tag @s remove parkour.player.looking_for_checkpoint

# Feedback
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.5