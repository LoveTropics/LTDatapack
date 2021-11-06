# Speed turtle
data merge entity @s {Attributes:[{Base:1.65,Name:"minecraft:generic.movement_speed"}]}
effect clear @p minecraft:speed
tag @s remove turtle_race.one_way.entity.turtle.has_boost
scoreboard players reset @s
