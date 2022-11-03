effect give @s slowness 3 4
particle minecraft:block minecraft:slime_block ~ ~1.25 ~ 0.2 0.3 0.2 0 100 force
title @s title " "
title @s subtitle {"text":"You've been slimed!","color":"green"}
playsound minecraft:entity.slime.death master @s
playsound minecraft:block.anvil.land master @a[distance=..20]
kill @e[tag=game.stt.jelly_bomb,limit=1,sort=nearest]