# Run ticking functions for carnival games
execute if score game.carnival.color_bop.active main.global matches 1 run function lt:game/carnival/color_bop/on_tick

# Run ticking functions for party games
###execute if score game.party.block_party.active main.global matches 1 run function lt:game/party/block_party/on_tick
execute if score game.party.spleef.active main.global matches 1 run function lt:game/party/spleef/on_tick
execute if score game.party.turtle_race.standard.active main.global matches 1 run function lt:game/party/race_standard/on_tick

# Run utility on tick functions
function lt:utility/on_tick

# Map Board tick_runner commands
execute in minecraft:overworld run execute as @a[x=244,y=108,z=240,dx=4,dy=4,dz=6,tag=!map.player,gamemode=!spectator] at @s run function lt:map/enter_map_area
tag @a remove map.player
execute in minecraft:overworld run tag @a[x=244,y=108,z=240,dx=4,dy=4,dz=6,tag=!map.player,gamemode=!spectator] add map.player
execute if entity @e[tag=map.player] run function lt:map/main
execute as @e[tag=map.marker.hit_tracker] at @s unless entity @a[tag=map.player,limit=1,sort=nearest,distance=..3.5] run tp @s ~ ~-500 ~
execute as @a[tag=!map.player,tag=map_gamemode] run function lt:map/revert_gamemode

# ಠ‿↼ - it's offical now 'cause its in the datapack
execute as @a[tag=awwww] at @s if entity @a[tag=awww,distance=..7] run function lt:utility/uwu/lunosus