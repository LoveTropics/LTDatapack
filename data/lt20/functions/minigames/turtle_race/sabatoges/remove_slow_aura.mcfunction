tag @s remove has_slow_aura
playsound minecraft:entity.enderman.teleport master @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1] ~ ~ ~ 2 1.5
title @s times 0 10 0
title @s title " "
title @s subtitle {"text":"| Slow Aura Deactivated |","color":"gray"}
scoreboard players reset @s TRaceSlowAura
