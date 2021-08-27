tag @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1.5] add has_slow_aura
playsound minecraft:entity.enderman.teleport master @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1.5] ~ ~ ~ 2 1.5
title @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1.5] times 0 10 0
title @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1.5] title " "
title @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1.5] subtitle {"text":"| Slow Aura Activated |","color":"gray"}
scoreboard players set @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1.5] TRaceSlowAura 300
