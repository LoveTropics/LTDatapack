scoreboard players operation MATH1 r.s.global = ticks_since_start r.s.global
scoreboard players operation MATH1 r.s.global %= 20 main.number
scoreboard players operation @s r.s.time_mil = MATH1 r.s.global

scoreboard players operation MATH1 r.s.global = ticks_since_start r.s.global
scoreboard players operation MATH1 r.s.global /= 20 main.number
scoreboard players operation MATH1 r.s.global %= 60 main.number
scoreboard players operation @s r.s.time_sec = MATH1 r.s.global

scoreboard players operation MATH1 r.s.global = ticks_since_start r.s.global
scoreboard players operation MATH1 r.s.global /= 20 main.number
scoreboard players operation MATH1 r.s.global /= 60 main.number
scoreboard players operation @s r.s.time_min = MATH1 r.s.global

scoreboard players reset MATH1 r.s.global