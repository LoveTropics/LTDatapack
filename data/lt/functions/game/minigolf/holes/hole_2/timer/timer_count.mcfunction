scoreboard players remove hole2time golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_2] run title @p[tag=hole_2_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole2time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole2hits","objective":"golfGlobal"},"color":"green"}]
execute as @e[tag=hole_2] unless score hole2time golfGlobal matches 0 run schedule function lt:game/minigolf/holes/hole_2/timer/timer_count 1s
execute if score hole2time golfGlobal matches 0 run function lt:game/minigolf/holes/timer/timer_end
execute as @e[tag=golf_crab,tag=hole_2] at @s if entity @e[tag=hole_2_end,distance=..0.65] run function lt:game/minigolf/holes/hole_2/end_hole