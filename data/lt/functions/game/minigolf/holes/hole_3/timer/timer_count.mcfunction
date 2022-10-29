scoreboard players remove hole3time golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_3] run title @p[tag=hole_3_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole3time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole3hits","objective":"golfGlobal"},"color":"green"}]
execute as @e[tag=hole_3] unless score hole3time golfGlobal matches 0 run schedule function lt:game/minigolf/holes/hole_3/timer/timer_count 1s
execute if score hole3time golfGlobal matches 0 run function lt:game/minigolf/holes/timer/timer_end
execute as @e[tag=golf_crab,tag=hole_3] at @s if entity @e[tag=hole_3_end,distance=..0.65] run function lt:game/minigolf/holes/hole_3/end_hole