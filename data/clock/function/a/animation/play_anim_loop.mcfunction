# Clock created via BDEngine

execute as @e[tag=clock_root,type=block_display] at @s run tag @s remove animation_pause
execute as @e[tag=clock_root,type=block_display] at @s run tag @s add animation_loop
execute as @e[tag=clock_root,type=block_display] at @s run function clock:k/animation/keyframe_0