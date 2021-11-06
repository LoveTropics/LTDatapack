# Adjust gamerule
gamerule doTileDrops false

# Remove blocks
# Remoe flor
execute as @e[tag=turtle_race.standard.marker.turtle_spawn] at @s run fill ~0.5 ~-1 ~0.5 ~-0.5 ~-1 ~-1.5 air destroy

# Adjust gamerule
gamerule doTileDrops true
