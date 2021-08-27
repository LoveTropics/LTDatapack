kill @e[tag=Worker]
kill @e[type=item]
execute as @e[tag=sigrun_forest_plot_1-1] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_1-1_3",sizeY:32,sizeZ:32,showboundingbox:0b}
execute as @e[tag=sigrun_forest_plot_1-2] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_1-2_3",sizeY:32,sizeZ:32,showboundingbox:0b}
execute as @e[tag=sigrun_forest_plot_1-3] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_1-3_3",sizeY:32,sizeZ:32,showboundingbox:0b}
execute as @e[tag=sigrun_forest_plot_1-4] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_1-4_3",sizeY:32,sizeZ:32,showboundingbox:0b}

execute as @e[tag=sigrun_forest_plot_2-2] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_2-2_3",sizeY:32,sizeZ:32,showboundingbox:0b}
execute as @e[tag=sigrun_forest_plot_2-3] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_2-3_3",sizeY:32,sizeZ:32,showboundingbox:0b}
execute as @e[tag=sigrun_forest_plot_2-4] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_2-4_3",sizeY:32,sizeZ:32,showboundingbox:0b}

execute as @e[tag=sigrun_forest_plot] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=sigrun_forest_plot] at @s run fill ~ ~-1 ~ ~ ~ ~ air
kill @e[type=item]
team join SigRunCollision @e[tag=Worker]
tellraw @a {"text":"The logging camp has expanded. It is almost complete.","color":"red","bold":true}
execute as @a[tag=sigrun_player] at @s run playsound minecraft:entity.enderman.death master @s ~ ~ ~ 2 1
