execute as @e[tag=SigRunDisasterMudslide] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:28,posZ:0,integrity:1.0f,name:"lt20:signature_run/events/mudslide/inactive",sizeY:32,sizeZ:32}
execute as @e[tag=SigRunDisasterMudslide] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=SigRunDisasterMudslide] at @s run fill ~ ~-1 ~ ~ ~ ~ air
kill @e[tag=SigRunDisasterTeleportPoint]
kill @e[type=item]
kill @e[tag=construction_pole]
kill @e[tag=wall_repair]
kill @e[tag=road_repair]
execute as @e[tag=sigrun_player] at @s run weather clear
