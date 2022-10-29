scoreboard players remove hole8time golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_8] run title @p[tag=hole_8_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole8time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole8hits","objective":"golfGlobal"},"color":"green"}]
execute as @e[tag=hole_8] unless score hole8time golfGlobal matches 0 run schedule function lt:game/minigolf/holes/hole_8/timer/timer_count 1s
execute if score hole8time golfGlobal matches 0 run function lt:game/minigolf/holes/timer/timer_end
execute as @e[tag=golf_crab,tag=hole_8] at @s if entity @e[tag=hole_8_end,distance=..0.65] run function lt:game/minigolf/holes/hole_8/end_hole