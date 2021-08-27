execute as @e[tag=SigRunEventLogCrash2] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"brickmaster5001",rotation:"NONE",posX:0,mode:"LOAD",posY:-15,sizeX:18,posZ:0,integrity:1.0f,showair:0b,name:"lt20:signature_run/events/log_crash_2/inactive",sizeY:15,sizeZ:25,showboundingbox:1b}
execute as @e[tag=SigRunEventLogCrash2] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=SigRunEventLogCrash2] at @s run fill ~ ~-1 ~ ~ ~ ~ air
kill @e[type=item]
kill @e[tag=SigRunEventTeleportPoint]
scoreboard players set Value OnSigOhNo 0

execute as @a[tag=sigrun_player] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 2 1.5
execute as @a[tag=sigrun_player] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 2 1.5

title @a[distance=..25] times 25 30 25
title @a[distance=..25] title {"text":"+6","color":"green","bold":true}
title @a[distance=..25] subtitle {"text":"| Signatures Added |","color":"yellow","bold":true}
execute at @a[distance=..25] run particle minecraft:totem_of_undying ~ ~2 ~ 0.2 0.2 0.2 0.45 75 force @a

scoreboard players add TotalSigs SignatureGlobal 6

tellraw @a {"text":"\n-------------------------------\n","color":"dark_aqua"}
tellraw @a [{"text":"Oh No! ","color":"red","bold":true},{"text":"Solved!","color":"green","bold":false},{"text":" | ","color":"gray","bold":false},{"text":"+6 Signatures Added","color":"blue","bold":false}]
tellraw @a {"text":"\n-------------------------------","color":"dark_aqua"}
