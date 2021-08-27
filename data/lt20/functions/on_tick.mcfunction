# Map Board onTick commands
execute in tropicraft:tropics run execute as @a[x=-984,y=131,z=2318,dx=8,dy=4,dz=7,tag=!at_map,gamemode=!spectator] at @s run function lt20:map_board/enter_map_area
execute in tropicraft:tropics run execute as @a[x=-1278,y=69,z=2662,dx=8,dy=4,dz=3,tag=!at_map,gamemode=!spectator] at @s run function lt20:map_board/enter_map_area
tag @a remove at_map
execute in tropicraft:tropics run tag @a[x=-984,y=131,z=2318,dx=8,dy=4,dz=7,tag=!at_map,gamemode=!spectator] add at_map
execute in tropicraft:tropics run tag @a[x=-1278,y=69,z=2662,dx=8,dy=4,dz=3,tag=!at_map,gamemode=!spectator] add at_map
execute if entity @e[tag=at_map] run function lt20:map_board/main
execute as @e[tag=hit_track] at @s unless entity @a[tag=at_map,limit=1,sort=nearest,distance=..2] run tp @s ~ ~-500 ~
execute as @a[tag=!at_map,tag=map_gamemode] run function lt20:map_board/revert_gamemode
#

# Info Area onTick commands
execute in tropicraft:tropics as @a[tag=!at_info_area,tag=info_area_gamemode] at @s run function lt20:info_area/revert_gamemode
execute in tropicraft:tropics as @a[x=-1285,y=69,z=2671,dx=22,dy=4,dz=22,tag=!at_info_area,tag=!info_area_gamemode] at @s run function lt20:info_area/set_gamemode
tag @a remove at_info_area
execute in tropicraft:tropics run tag @a[x=-1285,y=69,z=2671,dx=22,dy=4,dz=22,tag=!at_info_area] add at_info_area
execute in tropicraft:tropics if entity @a[tag=at_info_area] run function lt20:info_area/main
#

# volcano spleef handling
function lt20:minigames/volcano_spleef/game_inactive_tick
#

# signature run handling
function lt20:minigames/signature_run/game_inactive_tick
#

# server handler hanling kekw
function lt20:server_handler/main
#

# desert dig handler
function lt20:minigames/desert_dig/game_inactive_tick
#

# build competition
function lt20:minigames/build_competition/game_inactive_tick
#

# Turtle Racers
function lt20:minigames/turtle_race/game_inactive_tick
#
