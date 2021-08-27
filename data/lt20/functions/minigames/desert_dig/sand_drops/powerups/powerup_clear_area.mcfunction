fill ~1 122 ~ ~-1 127 ~ air replace tropicraft:volcanic_sand
fill ~ 122 ~1 ~ 127 ~-1 air replace tropicraft:volcanic_sand
playsound minecraft:block.gravel.break master @a[distance=..25] ~1 ~ ~ 2 0.25
playsound minecraft:block.gravel.break master @a[distance=..25] ~-1 ~ ~ 2 0.25
playsound minecraft:block.gravel.break master @a[distance=..25] ~ ~ ~1 2 0.25
playsound minecraft:block.gravel.break master @a[distance=..25] ~ ~ ~-1 2 0.25

particle minecraft:block tropicraft:volcanic_sand ~ 122 ~ 0.25 4 1 0 150 force @a[distance=..20]
particle minecraft:block tropicraft:volcanic_sand ~ 122 ~ 1 4 0.25 0 150 force @a[distance=..20]
kill @s
