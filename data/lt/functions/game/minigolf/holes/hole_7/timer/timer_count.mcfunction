scoreboard players remove hole7time golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_7] run title @p[tag=hole_7_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole7time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole7hits","objective":"golfGlobal"},"color":"green"}]
execute as @e[tag=hole_7] unless score hole7time golfGlobal matches 0 run schedule function lt:game/minigolf/holes/hole_7/timer/timer_count 1s
execute if score hole7time golfGlobal matches 0 run function lt:game/minigolf/holes/timer/timer_end
execute as @e[tag=golf_crab,tag=hole_7] at @s if entity @e[tag=hole_7_end,distance=..0.65] run function lt:game/minigolf/holes/hole_7/end_hole