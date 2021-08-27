summon tropicraft:turtle ~ ~ ~ {NoAI:1b,Tags:["racing_turtle"],Attributes:[{Base:1.7d,Name:"generic.movementSpeed"}],NoBrakesOnThisTrain:1b,Invulnerable:1b}
tag @e[tag=racing_turtle_spawn,sort=nearest,distance=..1,limit=1] add has_turtle
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.2 20
