title @s times 0t 3t 0t
title @s title {"translate": "lt.club.title.idiot_member","color": "dark_red","bold": true}
title @s subtitle {"translate": "lt.club.subtitle.idiot_member","color": "red"}
effect give @s slowness 1 5 true
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.5 0.5
damage @e[tag=club.bouncer,limit=1,sort=nearest] 1 minecraft:out_of_world by @s