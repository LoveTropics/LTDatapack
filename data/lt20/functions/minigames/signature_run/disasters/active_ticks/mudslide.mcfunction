execute as @e[tag=road_repair] at @s if block ~ ~-1 ~ air run particle minecraft:composter ~ ~-0.5 ~ 0.3 0.3 0.3 0 25
execute as @e[tag=road_repair] at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ black_concrete_powder
execute as @e[tag=road_repair] at @s if block ~ ~-1 ~ black_concrete_powder run kill @s

execute as @e[tag=road_repair] at @s if block ~ ~-1 ~ air run particle minecraft:composter ~ ~-1 ~ 0.3 0.3 0.3 0 25
execute as @e[tag=road_repair] at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ andesite_wall
execute as @e[tag=road_repair] at @s if block ~ ~-1 ~ andesite_wall run kill @s

execute as @a[tag=sigrun_player] at @s if entity @s[tag=sigrun_player,x=1743,y=134,z=1553,dx=28,dy=25,dz=15,tag=!in_disaster] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1.5
tag @a[tag=sigrun_player] remove in_disaster
execute as @a[tag=sigrun_player] at @s if entity @s[tag=sigrun_player,x=1743,y=134,z=1553,dx=28,dy=25,dz=15] run tag @s add in_disaster
scoreboard players set @a[tag=sigrun_player,tag=in_disaster] ToolSlot1 1
scoreboard players set @a[tag=sigrun_player,tag=in_disaster] ToolSlot2 1
scoreboard players set @a[tag=sigrun_player,tag=in_disaster] ToolSlotSpecial 1

execute unless entity @e[tag=road_repair] unless entity @e[tag=wall_repair] run function lt20:minigames/signature_run/disasters/event_complete/mudslide
