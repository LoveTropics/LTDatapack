tag @s add been_slowed
scoreboard players set @s TRaceSlowTime 30
title @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1] title {"text":"You've Been Slowed!","color":"white"}
playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 2 2
tellraw @a [{"selector":"@s","color":"gray"},{"text":" has been slowed by ","color":"yellow"},{"selector":"@a[tag=turtle_racer,sort=nearest,limit=1,tag=has_slow_aura]","color":"gray"},{"text":"'s","color":"gray"},{"text":" slow aura!","color":"yellow"}]
