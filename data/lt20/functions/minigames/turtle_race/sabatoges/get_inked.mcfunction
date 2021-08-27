tp @e[tag=ink_bomb,sort=nearest,limit=1,distance=..6] ~ ~-500 ~
tag @a[tag=turtle_racer,sort=nearest,limit=1,distance=..2] add inked
tag @s add inked_turtle
effect give @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1] blindness 5 50 true
replaceitem entity @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1] armor.head carved_pumpkin 1
scoreboard players set @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1] TRacePowerupTime 40
scoreboard players set @s TRacePowerupTime 40
title @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1] title {"text":"You've Been Inked!","color":"white"}
tellraw @a [{"selector":"@a[tag=turtle_racer,sort=nearest,limit=1,distance=..1]","color":"gray"},{"text":" has been hit by an ink bomb!","color":"yellow"}]
execute as @a[tag=turtle_racer,sort=nearest,limit=1,distance=..1] at @s run playsound minecraft:entity.squid.squirt master @s ~ ~ ~ 2 1
particle minecraft:squid_ink ~ ~ ~ 1 1 1 0.01 25 force
