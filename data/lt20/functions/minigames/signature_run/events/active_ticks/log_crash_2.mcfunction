execute as @e[tag=log_type_2] at @s store success score @s LogBroken run fill ~ ~ ~ ~ ~ ~11 tropicraft:mahogany_log[axis=z] keep
execute as @e[tag=log_type_2,scores={LogBroken=1..}] at @s run fill ~ ~ ~ ~ ~ ~12 air destroy
execute as @e[tag=log_type_2,scores={LogBroken=1..}] at @s run kill @e[type=item]
execute as @e[tag=log_type_2,scores={LogBroken=1..}] at @s run kill @s

execute as @e[tag=log_type_2] at @s if block ~ ~-1 ~ air run fill ~ ~ ~ ~ ~ ~12 air
execute as @e[tag=log_type_2] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[tag=log_type_2] at @s if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~11 tropicraft:mahogany_log[axis=z]

execute unless entity @e[tag=log_type_2] run function lt20:minigames/signature_run/events/event_complete/log_crash_2

execute as @a[tag=sigrun_player] at @s if entity @s[tag=sigrun_player,x=1645,y=130,z=1593,dx=11,dy=25,dz=20,tag=!in_area] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1.5
tag @a[tag=sigrun_player] remove in_area
execute as @a[tag=sigrun_player] at @s if entity @s[tag=sigrun_player,x=1645,y=130,z=1593,dx=11,dy=25,dz=20] run tag @s add in_area

scoreboard players set @a[tag=sigrun_player,tag=in_area] ToolSlot1 2
