scoreboard players remove hole5time golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_5] run title @p[tag=hole_5_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole5time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole5hits","objective":"golfGlobal"},"color":"green"}]
execute as @e[tag=hole_5] unless score hole5time golfGlobal matches 0 run schedule function lt:game/minigolf/holes/hole_5/timer/timer_count 1s
execute if score hole5time golfGlobal matches 0 run function lt:game/minigolf/holes/timer/timer_end
execute as @e[tag=golf_crab,tag=hole_5] at @s if entity @e[tag=hole_5_end,distance=..0.65] run function lt:game/minigolf/holes/hole_5/end_hole