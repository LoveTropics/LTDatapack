# Teleports the player to the appropriate starting checkpoint on death
execute if entity @s[tag=parkour.crystal_cave] run tp @s @e[tag=game.parkour.crystal_cave,tag=game.parkour.first_checkpoint,limit=1] 

# Feedback
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.5
execute as @s at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2 1