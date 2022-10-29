scoreboard players remove hole1time golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_1] run title @p[tag=hole_1_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole1time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole1hits","objective":"golfGlobal"},"color":"green"}]
execute as @e[tag=hole_1] unless score hole1time golfGlobal matches 0 run schedule function lt:game/minigolf/holes/hole_1/timer/timer_count 1s
execute if score hole1time golfGlobal matches 0 run function lt:game/minigolf/holes/timer/timer_end
execute as @e[tag=golf_crab,tag=hole_1] at @s if entity @e[tag=hole_1_end,distance=..0.65] run function lt:game/minigolf/holes/hole_1/end_hole