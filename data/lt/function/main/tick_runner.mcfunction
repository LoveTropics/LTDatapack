# Run utility on tick functions
function lt:utility/on_tick

execute as @a[tag=!utility.player.joined,tag=!ltminigames.isolated] at @s run function lt:utility/player/first_join

# ಠ‿↼ - it's offical now 'cause its in the datapack
execute as @a[tag=awwww] at @s if entity @a[tag=awww,distance=..7] run function lt:utility/uwu/lunosus

# Club Stuff
execute in tropicraft:tropics if entity @a[tag=club.first_time_join] run function lt:club/introduction/on_tick
execute in tropicraft:tropics run function lt:club/on_tick

# Build Mode Tools
#execute in tropicraft:tropics as @a[tag=building,tag=!given_tools,current_world=true] at @s if entity @s[buildmode=true] run function lt:utility/buildmode/give_tools

#Systems
function lt:systems/on_tick

# Marker finder
execute as @e[type=marker] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 0 1 force @a[tag=ilikemarkers,distance=0..15]

# Turtle Race
execute in tropicraft:tropics run function lt:world_games/turtle/on_tick

# Stage
function lt:stage/on_tick

# Forklifts
#function lt:forklift/on_tick
