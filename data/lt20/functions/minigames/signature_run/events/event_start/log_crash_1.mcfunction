execute as @e[tag=SigRunEventLogCrash1] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,posX:0,mode:"LOAD",posY:-10,sizeX:25,posZ:0,integrity:1.0f,name:"lt20:signature_run/events/log_crash_1/active",sizeY:10,sizeZ:12}
execute as @e[tag=SigRunEventLogCrash1] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=SigRunEventLogCrash1] at @s run fill ~ ~-1 ~ ~ ~ ~ air
kill @e[type=item]
scoreboard players set Value OnSigOhNo 1
tellraw @a {"text":"\n-------------------------------\n","color":"dark_aqua"}
tellraw @a [{"text":"Oh No!","color":"red","bold":true},{"text":" a logging truck has overturned, bringing traffick to a halt! The company won't do anything about it. Help the townsfolk by clearing the logs.","color":"white","bold":false}]
tellraw @a [{"text":"\n | ","color":"gray"},{"text":"+6 ","color":"green"},{"text":"Signatures On Completion","color":"yellow"},{"text":" | ","color":"gray"}]
tellraw @a {"text":"\n-------------------------------","color":"dark_aqua"}
execute if score PreviousOhNo SignatureGlobal matches 0 run scoreboard players set PreviousOhNo SignatureGlobal 1
