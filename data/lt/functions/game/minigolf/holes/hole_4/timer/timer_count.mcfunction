scoreboard players remove hole4time golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_4] run title @p[tag=hole_4_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole4time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole4hits","objective":"golfGlobal"},"color":"green"}]
execute as @e[tag=hole_4] unless score hole4time golfGlobal matches 0 run schedule function lt:game/minigolf/holes/hole_4/timer/timer_count 1s
execute if score hole4time golfGlobal matches 0 run function lt:game/minigolf/holes/timer/timer_end
execute as @e[tag=golf_crab,tag=hole_4] at @s if entity @e[tag=hole_4_end,distance=..0.65] run function lt:game/minigolf/holes/hole_4/end_hole