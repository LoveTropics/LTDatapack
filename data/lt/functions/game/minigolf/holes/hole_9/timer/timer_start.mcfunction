scoreboard players operation hole9time golfGlobal = HoleTimes golfGlobal
title @p[tag=hole_9_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole9time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole9hits","objective":"golfGlobal"},"color":"green"}]
schedule function lt:game/minigolf/holes/hole_9/timer/timer_count 1s