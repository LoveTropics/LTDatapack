# Run ticking functions for carnival games
#execute if score game.carnival.color_bop.active main.global matches 1 run function lt:game/carnival/color_bop/on_tick

# Run ticking functions for party games
###execute if score game.party.block_party.active main.global matches 1 run function lt:game/party/block_party/on_tick
#execute if score game.party.spleef.active main.global matches 1 run function lt:game/party/spleef/on_tick

# Run utility on tick functions
function lt:utility/on_tick

# Map Board tick_runner commands
execute in minecraft:overworld run execute as @a[x=1294,y=67,z=954,dx=10,dy=5,dz=10,tag=!map.player,gamemode=!spectator] at @s run function lt:map/enter_map_area
tag @a remove map.player
execute in minecraft:overworld run tag @a[x=1294,y=67,z=954,dx=10,dy=5,dz=10,tag=!map.player,gamemode=!spectator] add map.player
execute if entity @e[tag=map.player] run function lt:map/main
execute as @e[tag=map.marker.hit_tracker] at @s unless entity @a[tag=map.player,limit=1,sort=nearest,distance=..3.5] run tp @s ~ ~-500 ~
execute as @a[tag=!map.player,tag=map_gamemode] run function lt:map/revert_gamemode

# Runs MiniGolf tick commands
function lt:game/minigolf/core/on_tick

# ಠ‿↼ - it's offical now 'cause its in the datapack
execute as @a[tag=awwww] at @s if entity @a[tag=awww,distance=..7] run function lt:utility/uwu/lunosus

# Kill stt entities after they exist for too long
scoreboard players add @e[tag=game.stt.placed_mob] game.stt.entity_track 1
execute as @e[tag=game.stt.placed_mob,scores={game.stt.entity_track=1200..}] at @s run function lt:game/stt/entity/remove_entity

# Team Selection Teleporter
execute in tropicraft:tropics at @e[type=marker,tag=utility.team_selection_teleporter] run particle minecraft:dust{color:[1,0,0],scale:1} ~ ~0.75 ~0.2 0.05 0.5 0.2 0.01 1 force @a[distance=..15]
execute in tropicraft:tropics at @e[type=marker,tag=utility.team_selection_teleporter] run particle minecraft:dust{color:[0.059,0.467,1.0],scale:1} ~ ~0.75 ~-0.2 0.05 0.5 0.2 0.01 1 force @a[distance=..15]
execute in tropicraft:tropics as @a at @s if entity @e[type=marker,tag=utility.team_selection_teleporter,distance=..0.65] run function lt:utility/to_team_selection
execute in tropicraft:tropics at @e[type=marker,tag=edu.edu_teleporter] run particle minecraft:enchant ~ ~1 ~ 0.1 0.5 0.1 0.01 1 force @a[distance=..15]
execute in tropicraft:tropics as @a at @s if entity @e[type=marker,tag=edu.edu_teleporter,distance=..0.65] run function lt:utility/to_edu_area


# Change long duration strength area effect cloud created by linger potions to desired functionality
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:long_strength"},tag=!game.stt.strength_aec] at @s run function lt:game/stt/entity/fix_strength_aec

# Change turtle master area effect cloud created by linger potions to desired functionality
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:turtle_master"},tag=!game.stt.turtle_master_aec] at @s run function lt:game/stt/entity/fix_turtle_master_aec

# Change turtle master area effect cloud created by linger potions to desired functionality
execute as @e[type=minecraft:area_effect_cloud,nbt={Color:266808},tag=!game.stt.blindness_aec] at @s run function lt:game/stt/entity/fix_blindness_aec

# Make jelly bombs work
execute as @e[tag=game.stt.jelly_bomb] at @s run function lt:game/stt/entity/jelly_bomb

# back to map teleporters
execute as @e[tag=map.teleporter] at @s run particle minecraft:portal ~ ~1 ~ 0.1 0.35 0.1 0.025 1 force @a[distance=..15]
execute as @e[tag=map.teleporter] at @s run execute as @a[distance=..0.75] at @s run function lt:map/back_to_map

# Stage stuff
execute if entity @e[tag=stage.dj] run function lt:stage/feature/dj/main
execute if entity @e[tag=stage.shark] run function lt:stage/feature/sharks/main

# Club Stuff
execute in tropicraft:tropics if entity @a[tag=club.first_time_join] run function lt:club/introduction/on_tick
execute in tropicraft:tropics run function lt:club/on_tick

#Donation Effects
function lt:events/donation/large_coconut/tick

# Runs collectible specific on_tick (mostly just for organizations sake)
execute in tropicraft:tropics run function lt:collectible/mechanic/on_tick

# Parkour
execute in tropicraft:tropics if entity @a[tag=parkour.player] run function lt:game/parkour/on_tick

# Dropper
function lt:world_games/dropper/on_tick

# Build Mode Tools
execute in tropicraft:tropics as @a[tag=building,tag=!given_tools,current_world=true] at @s if data entity @s ForgeData.PlayerPersisted.gamemodebuild{active:1b} run function lt:utility/buildmode/give_tools

# Make interaction blocker invisible
execute in tropicraft:tropics run effect give @e[type=slime,tag=interact_blocker] invisibility infinite 1 true
execute in tropicraft:tropics run effect give @e[type=slime,tag=interact_blocker] regeneration infinite 50 true

# Spawn return items system.
execute in tropicraft:tropics as @a at @s if entity @e[type=marker,tag=utility.return_items_portal,distance=..0.85] run function lt:utility/return_items
# Particle for above
execute in tropicraft:tropics positioned 2329.53 131.5 2396.50 run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.01 1 force @a[distance=..10]


# Scavenger Hunt
#execute in tropicraft:tropics as @a[tag=!scavengerHunt01,current_world=true] run execute if data entity @s ForgeCaps.ltextras:collectibles.collectibles[].tag{title:"Clue 01"} run tag @s add scavengerHunt01

# Crab Golf
execute as @e[type=tropicraft:fiddler_crab,tag=golfCrab,nbt={HurtTime:1s}] run scoreboard players add @s golf.hits 1
execute as @e[predicate=lt:in_trap] run data modify entity @s Motion set value [0.0,1.0,0.0]
execute as @e[predicate=lt:in_trap] run tp @s @e[tag=golfStart,sort=nearest,limit=1]

#Systems
function lt:systems/on_tick
