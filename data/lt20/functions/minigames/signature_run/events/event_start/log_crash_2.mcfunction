execute as @e[tag=SigRunEventLogCrash2] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"brickmaster5001",rotation:"NONE",posX:0,mode:"LOAD",posY:-15,sizeX:18,posZ:0,integrity:1.0f,showair:0b,name:"lt20:signature_run/events/log_crash_2/active",sizeY:15,sizeZ:25,showboundingbox:1b}
execute as @e[tag=SigRunEventLogCrash2] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=SigRunEventLogCrash2] at @s run fill ~ ~-1 ~ ~ ~ ~ air
kill @e[type=item]
scoreboard players set Value OnSigOhNo 2
tellraw @a {"text":"\n-------------------------------\n","color":"dark_aqua"}
tellraw @a [{"text":"Oh No!","color":"red","bold":true},{"text":" a logging truck has overturned, bringing traffick to a halt! The company won't do anything about it. Help the townsfolk by clearing the logs.","color":"white","bold":false}]
tellraw @a [{"text":"\n | ","color":"gray"},{"text":"+6 ","color":"green"},{"text":"Signatures On Completion","color":"yellow"},{"text":" | ","color":"gray"}]
tellraw @a {"text":"\n-------------------------------","color":"dark_aqua"}
execute if score PreviousOhNo SignatureGlobal matches 0 run scoreboard players set PreviousOhNo SignatureGlobal 2
