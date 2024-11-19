execute if entity @s[predicate=!lt:is_elytra] run return run function lt:world_games/elytra/player_fail
execute if block ~ ~ ~ ltextras:checkpoint[stage=1] run function lt:world_games/elytra/add_score {"checkpoint":"1"}
execute if block ~ ~ ~ ltextras:checkpoint[stage=2] run function lt:world_games/elytra/add_score {"checkpoint":"2"}