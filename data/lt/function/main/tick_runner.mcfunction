# Run utility on tick functions
function lt:utility/on_tick
kill @e[type=ltminigames:vending_machine]
execute as @a[tag=!utility.player.joined,tag=!ltminigames.isolated] at @s run function lt:utility/player/first_join

# Runs MiniGolf tick commands
function lt:game/minigolf/core/on_tick

# ಠ‿↼ - it's offical now 'cause its in the datapack
execute as @a[tag=awwww] at @s if entity @a[tag=awww,distance=..7] run function lt:utility/uwu/lunosus

# Kill stt entities after they exist for too long
scoreboard players add @e[tag=game.stt.placed_mob] game.stt.entity_track 1
execute as @e[tag=game.stt.placed_mob,scores={game.stt.entity_track=1200..}] at @s run function lt:game/stt/entity/remove_entity

# Change long duration strength area effect cloud created by linger potions to desired functionality
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:long_strength"},tag=!game.stt.strength_aec] at @s run function lt:game/stt/entity/fix_strength_aec

# Change turtle master area effect cloud created by linger potions to desired functionality
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:turtle_master"},tag=!game.stt.turtle_master_aec] at @s run function lt:game/stt/entity/fix_turtle_master_aec

# Change turtle master area effect cloud created by linger potions to desired functionality
execute as @e[type=minecraft:area_effect_cloud,nbt={Color:266808},tag=!game.stt.blindness_aec] at @s run function lt:game/stt/entity/fix_blindness_aec

# Make jelly bombs work
execute as @e[tag=game.stt.jelly_bomb] at @s run function lt:game/stt/entity/jelly_bomb

# Club Stuff
execute in tropicraft:tropics if entity @a[tag=club.first_time_join] run function lt:club/introduction/on_tick
execute in tropicraft:tropics run function lt:club/on_tick

# Parkour
#execute in tropicraft:tropics if entity @a[tag=parkour.player] run function lt:game/parkour/on_tick
function lt:world_games/parkour/on_second

# Dropper
function lt:world_games/dropper/on_tick

# Build Mode Tools
execute in tropicraft:tropics as @a[tag=building,tag=!given_tools,current_world=true] at @s if entity @s[buildmode=true] run function lt:utility/buildmode/give_tools

# Spawn return items system.
execute in tropicraft:tropics as @a at @s if entity @e[type=marker,tag=utility.return_items_portal,distance=..0.85] run function lt:utility/return_items
# Particle for above
execute in tropicraft:tropics positioned 2329.53 131.5 2396.50 run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.01 1 force @a[distance=..10]

# Crab Golf
function lt:world_games/minigolf/core/on_tick

#Systems
function lt:systems/on_tick


# Hockey
function lt:world_games/hockey/on_tick


# Marker finder
execute as @e[type=marker] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 0 1 force @a[tag=ilikemarkers,distance=0..15]


#Random values
execute store result score Banner main.random run random value 1..6
execute store result score Armor main.random run random value 1..10

# Elytra
execute in tropicraft:tropics run function lt:world_games/elytra/on_tick

# Launch Pads
# TODO: Ask gegy if theres an easy way to only have certain functions be ran on_tick when a game requires them.
function lt:map/generic/launch_pad/on_tick

# Quest System
function lt:quest/main/on_tick

# Forklifts
function lt:forklift/on_tick


#Turtle Clash (Temp)
function lt:game/turtle_clash/tick
