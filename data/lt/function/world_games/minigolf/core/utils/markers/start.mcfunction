tag @s remove startTag
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["golfStart"]}
execute store result storage lt:golf_data start int 1 run scoreboard players get start golf.data
execute as @e[tag=golfStart,distance=..2,type=marker] run function lt:world_games/minigolf/core/utils/markers/start_score with storage lt:golf_data
kill @s