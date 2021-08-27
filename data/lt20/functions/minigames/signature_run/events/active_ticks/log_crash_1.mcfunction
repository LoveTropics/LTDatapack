execute as @e[tag=log_type_1] at @s store success score @s LogBroken run fill ~ ~ ~ ~15 ~ ~ tropicraft:mahogany_log[axis=x] keep
execute as @e[tag=log_type_1,scores={LogBroken=1..}] at @s run fill ~ ~ ~ ~15 ~ ~ air destroy
execute as @e[tag=log_type_1,scores={LogBroken=1..}] at @s run kill @e[type=item]
execute as @e[tag=log_type_1,scores={LogBroken=1..}] at @s run kill @s

execute as @e[tag=log_type_1] at @s if block ~ ~-1 ~ air run fill ~ ~ ~ ~15 ~ ~ air
execute as @e[tag=log_type_1] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[tag=log_type_1] at @s if block ~ ~ ~ air run fill ~ ~ ~ ~15 ~ ~ tropicraft:mahogany_log[axis=x]

execute unless entity @e[tag=log_type_1] run function lt20:minigames/signature_run/events/event_complete/log_crash_1

#
execute as @a[tag=sigrun_player] at @s if entity @s[tag=sigrun_player,x=1680,y=120,z=1761,dx=27,dy=25,dz=13,tag=!in_area] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1.5
tag @a[tag=sigrun_player] remove in_area
execute as @a[tag=sigrun_player] at @s if entity @s[tag=sigrun_player,x=1680,y=120,z=1761,dx=27,dy=25,dz=13] run tag @s add in_area

scoreboard players set @a[tag=sigrun_player,tag=in_area] ToolSlot1 2
