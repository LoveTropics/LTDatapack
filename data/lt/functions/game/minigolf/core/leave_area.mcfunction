execute as @s run function lt:game/minigolf/core/golf_leave
tag @s remove in.golf.area
execute if entity @s[tag=golf.is.crab] run disguise clear
tag @s remove golf.is.crab