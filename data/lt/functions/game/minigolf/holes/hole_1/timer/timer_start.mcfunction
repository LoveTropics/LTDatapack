scoreboard players operation hole1time golfGlobal = HoleTimes golfGlobal
title @p[tag=hole_1_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole1time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole1hits","objective":"golfGlobal"},"color":"green"}]
schedule function lt:game/minigolf/holes/hole_1/timer/timer_count 1s