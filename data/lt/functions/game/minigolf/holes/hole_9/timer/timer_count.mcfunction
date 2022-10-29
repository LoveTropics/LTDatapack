scoreboard players remove hole9time golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_9] run title @p[tag=hole_9_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole9time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole9hits","objective":"golfGlobal"},"color":"green"}]
execute as @e[tag=hole_9] unless score hole9time golfGlobal matches 0 run schedule function lt:game/minigolf/holes/hole_9/timer/timer_count 1s
execute if score hole9time golfGlobal matches 0 run function lt:game/minigolf/holes/timer/timer_end
execute as @e[tag=golf_crab,tag=hole_9] at @s if entity @e[tag=hole_9_end,distance=..0.65] run function lt:game/minigolf/holes/hole_9/end_hole