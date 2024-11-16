tag @s remove endTag
execute align xyz run summon marker ~0.5 ~-0.2 ~0.5 {Tags:["golfEnd"]}
execute store result storage lt:golf_data end int 1 run scoreboard players get end golf.data
execute as @e[tag=golfEnd,distance=..2,type=marker] run function lt:world_games/minigolf/core/utils/markers/end_score with storage lt:golf_data
kill @s