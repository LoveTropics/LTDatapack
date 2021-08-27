tag @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1.5] add is_launching_shock_rocket
playsound minecraft:entity.firework_rocket.launch master @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1.5] ~ ~ ~ 2 1
title @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1.5] times 0 10 0
title @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1.5] title " "
title @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1.5] subtitle {"text":"| Shock Rocket Launched |","color":"aqua"}
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["shock_rocket"]}
tp @e[tag=shock_rocket] @a[tag=turtle_racer,sort=nearest,limit=1,distance=..3]
execute as @e[tag=shock_rocket] at @s run function lt20:minigames/turtle_race/sabatoges/scan_rocket
