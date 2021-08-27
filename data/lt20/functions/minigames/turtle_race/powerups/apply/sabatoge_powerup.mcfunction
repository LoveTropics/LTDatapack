execute as @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1] at @s run function lt20:minigames/turtle_race/sabatoges/choose_sabatoge
tag @e[tag=sabatoge_powerup,sort=nearest,limit=1,distance=..3] remove powerup_active
