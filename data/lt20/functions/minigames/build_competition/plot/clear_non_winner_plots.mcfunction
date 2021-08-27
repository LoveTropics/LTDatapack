# Loads plots with theme templates if necessary
execute as @e[tag=build_competition_structure_marker,tag=!build_winner_plot] at @s run setblock ~ ~ ~1 minecraft:structure_block[mode=load]{posX:0,posY:-1,posZ:-21,sizeX:21,sizeY:26,sizeZ:21,name:"lt20:build_competition_templates/blank",mode:"LOAD"}


# Activates structure blocks
execute as @e[tag=build_competition_structure_marker,tag=!build_winner_plot] at @s run setblock ~ ~1 ~1 minecraft:redstone_block
execute as @e[tag=build_competition_structure_marker,tag=!build_winner_plot] at @s run fill ~ ~ ~1 ~ ~1 ~1 minecraft:air
execute as @e[tag=build_competition_structure_marker,tag=!build_winner_plot] at @s run fill ~ ~25 ~ ~20 ~34 ~-20 air
kill @e[type=item]

execute as @e[tag=build_competition_structure_marker,tag=!build_winner_plot] at @s run data merge entity @e[tag=build_competition_plot_label,sort=nearest,limit=1,distance=..3] {CustomName:'{"text":"","color":"aqua"}'}
