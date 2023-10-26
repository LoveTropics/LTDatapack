title @s times 0t 3t 0t
title @s title {"text": "DISGUISE REMOVED","color": "dark_red","bold": true}
title @s subtitle {"text": "Reequip your disguise - Bouncers inbound!","color": "red"}
effect give @s blindness 2 60 true
effect give @s slowness 1 5 true
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.5 0.5
damage @e[tag=club.bouncer,limit=1,sort=nearest] 5 minecraft:out_of_world by @s