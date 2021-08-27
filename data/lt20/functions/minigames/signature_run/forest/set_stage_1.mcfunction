kill @e[tag=Worker]
kill @e[type=item]
execute as @e[tag=sigrun_forest_plot_1-2] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_1-2_1",sizeY:32,sizeZ:32,showboundingbox:0b}
execute as @e[tag=sigrun_forest_plot_1-3] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_1-3_1",sizeY:32,sizeZ:32,showboundingbox:0b}

execute as @e[tag=sigrun_forest_plot] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=sigrun_forest_plot] at @s run fill ~ ~-1 ~ ~ ~ ~ air
kill @e[type=item]
team join SigRunCollision @e[tag=Worker]
tellraw @a {"text":"The Company has begun setting up its logging camp.","color":"red","bold":true}
execute as @a[tag=sigrun_player] at @s run playsound minecraft:entity.enderman.death master @s ~ ~ ~ 2 1
