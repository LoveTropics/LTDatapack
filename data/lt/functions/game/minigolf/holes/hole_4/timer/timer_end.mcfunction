execute at @a[tag=hole_4_player] run playsound minecraft:block.note_block.didgeridoo voice @a[tag=hole_4_player] ~ ~ ~ 1 0.1
kill @e[tag=golf_crab,tag=hole_4]
execute as @a[tag=hole_4_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_4_player] run function lt:game/minigolf/core/gamemode_end
title @a[tag=hole_4_player] actionbar [{"text":"Your time has ran out for the #4 of Crab Golf","color":"red"}]
execute as @a[tag=hole_4_player] run tag @s remove hole_4_player