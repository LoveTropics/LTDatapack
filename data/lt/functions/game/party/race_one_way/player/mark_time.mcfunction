scoreboard players operation MATH1 r.o.global = ticks_since_start r.o.global
scoreboard players operation MATH1 r.o.global %= 20 main.number
scoreboard players operation @s r.o.time_mil = MATH1 r.o.global

scoreboard players operation MATH1 r.o.global = ticks_since_start r.o.global
scoreboard players operation MATH1 r.o.global /= 20 main.number
scoreboard players operation MATH1 r.o.global %= 60 main.number
scoreboard players operation @s r.o.time_sec = MATH1 r.o.global

scoreboard players operation MATH1 r.o.global = ticks_since_start r.o.global
scoreboard players operation MATH1 r.o.global /= 20 main.number
scoreboard players operation MATH1 r.o.global /= 60 main.number
scoreboard players operation @s r.o.time_min = MATH1 r.o.global

scoreboard players reset MATH1 r.o.global