tag @s remove dummyTag
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["golfDummySpawner"]}
execute store result storage lt:golf_data dummy int 1 run scoreboard players get dummy golf.data
execute as @e[tag=golfDummySpawner,distance=..2,type=marker] run function lt:world_games/minigolf/core/utils/markers/dummy_score with storage lt:golf_data
kill @s