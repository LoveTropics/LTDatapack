function lt:game/minigolf/core/hole_end
execute as @s run function lt:game/minigolf/core/golf_leave
tag @s add in.golf.area
execute if score GolfMode golf.global matches 1 run disguise as tropicraft:fiddler_crab
execute if score GolfMode golf.global matches 1 run tag @s add golf.is.crab