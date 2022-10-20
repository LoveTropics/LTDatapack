scoreboard players remove hole6time golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_6] run title @p[tag=hole_6_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole6time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole6hits","objective":"golfGlobal"},"color":"green"}]
execute as @e[tag=hole_6] unless score hole6time golfGlobal matches 0 run schedule function lt:game/minigolf/holes/hole_6/timer/timer_count 1s
execute if score hole6time golfGlobal matches 0 run function lt:game/minigolf/holes/timer/timer_end
execute as @e[tag=golf_crab,tag=hole_6] at @s if entity @e[tag=hole_6_end,distance=..0.65] run function lt:game/minigolf/holes/hole_6/end_hole