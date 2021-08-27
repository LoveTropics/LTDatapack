playsound minecraft:entity.fishing_bobber.splash master @p ~ ~ ~ 2 2
playsound minecraft:block.note_block.flute master @p ~ ~ ~ 2 0.75
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.025 15 force
tag @s add has_speed_boost
scoreboard players set @s TRaceSpeedTime 20
scoreboard players reset @s TRaceSlowTime
data merge entity @s {Attributes:[{Base:4.0d,Name:"generic.movementSpeed"},{Base:1.5d,Name:"forge.swimSpeed"}]}

tag @e[tag=speed_powerup,sort=nearest,limit=1,distance=..3] remove powerup_active
