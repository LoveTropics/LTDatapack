execute if entity @s[predicate=!lt:is_turtle] run return run function lt:world_games/turtle/player_fail
execute if entity @s[tag=!world_game.turtle.started] run function lt:world_games/turtle/init_player
execute if block ~ ~ ~ ltextras:checkpoint[stage=1] run function lt:world_games/turtle/add_score {"checkpoint":"1"}
execute if block ~ ~ ~ ltextras:checkpoint[stage=2] run function lt:world_games/turtle/add_score {"checkpoint":"2"}
execute if block ~ ~ ~ ltextras:checkpoint[stage=3] run function lt:world_games/turtle/add_score {"checkpoint":"3"}
execute if block ~ ~ ~ ltextras:checkpoint[stage=4] run function lt:world_games/turtle/add_score {"checkpoint":"4"}
execute if block ~ ~ ~ ltextras:checkpoint[stage=5] run function lt:world_games/turtle/add_score {"checkpoint":"5"}
execute if block ~ ~ ~ ltextras:checkpoint[stage=6] run function lt:world_games/turtle/add_score {"checkpoint":"6"}
execute if block ~ ~ ~ ltextras:checkpoint[stage=7] run function lt:world_games/turtle/add_score {"checkpoint":"7"}
execute if block ~ ~ ~ ltextras:checkpoint[stage=8] run function lt:world_games/turtle/add_score {"checkpoint":"8"}
execute if block ~ ~ ~ ltextras:checkpoint[stage=9] run function lt:world_games/turtle/add_score {"checkpoint":"9"}
execute if score @s world_game.turtle.tracker matches 2.. if block ~ ~ ~ ltextras:checkpoint[stage=10] run function lt:world_games/turtle/on_win
scoreboard players add @s world_game.turtle.clock 1
effect give @s minecraft:water_breathing 30 255 true
title @s actionbar {"translate":"lt.world_games.turtle.time","with":[{"score":{"name":"@s","objective":"world_game.turtle.clock"}},{"score":{"name":"@s","objective":"world_game.turtle.tracker"}}]}
