# Send Message / Time Up Stuff
$title @a[tag=hole$(XpLevel)Player,current_world=true] actionbar [{"translate":"lt.golf.leave_game","color":"red"}]
$execute as @a[tag=hole$(XpLevel)Player,current_world=true] at @s run playsound minecraft:block.note_block.bell voice @s

# Kills the crab
$execute as @e[tag=hole$(XpLevel)End,current_world=true] run function lt:world_games/minigolf/core/utils/kill_crab {hole:$(XpLevel)}

# Resets The Player
$execute as @p[tag=hole$(XpLevel)Player,current_world=true] run function lt:world_games/minigolf/core/utils/gamemode
$execute as @a[current_world=true] run tag @s remove hole$(XpLevel)Player