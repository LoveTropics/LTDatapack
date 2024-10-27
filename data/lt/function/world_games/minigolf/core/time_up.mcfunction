# Send Message / Time Up Stuff
$title @a[tag=hole$(ForcedAge)Player,current_world=true] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"$(ForcedAge)"}]}]
$execute as @a[tag=hole$(ForcedAge)Player,current_world=true] at @s run playsound minecraft:block.note_block.bell voice @s

# Kills the crab
$execute as @e[tag=hole$(ForcedAge)End,current_world=true] at @s run function lt:world_games/minigolf/core/utils/kill_crab {hole:$(ForcedAge)}

# Resets The Player
$execute as @p[tag=hole$(ForcedAge)Player,current_world=true] at @s run function lt:world_games/minigolf/core/utils/gamemode
$execute as @a[current_world=true] run tag @s remove hole$(ForcedAge)Player