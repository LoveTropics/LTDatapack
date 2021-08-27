execute as @e[tag=SigRunDisasterMudslide] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:28,posZ:0,integrity:1.0f,name:"lt20:signature_run/events/mudslide/active",sizeY:32,sizeZ:32}
execute as @e[tag=SigRunDisasterMudslide] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=SigRunDisasterMudslide] at @s run fill ~ ~-1 ~ ~ ~ ~ air
kill @e[type=item]
scoreboard players set Value OnSigDisaster 1
execute as @a[tag=sigrun_player] at @s run playsound minecraft:block.anvil.land master @s
tellraw @a {"text":"\n-------------------------------\n","color":"dark_aqua"}
tellraw @a [{"text":"Disaster!","color":"dark_red","bold":true},{"text":" Due to instability caused by deforestation, a mudslide has occured and blocked the main road.","color":"white","bold":false}]
tellraw @a [{"text":"\n | ","color":"gray"},{"text":"Villagers are unable to get supplies with the road blocked. They will not grant signatures until the disaster has been fixed!","color":"gray"},{"text":" | ","color":"gray"}]
tellraw @a {"text":"\n-------------------------------","color":"dark_aqua"}
execute as @e[tag=sigrun_player] at @s run weather rain
