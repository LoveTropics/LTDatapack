execute as @a[current_world=true,tag=!world_game.turtle_active,predicate=lt:is_turtle] at @s if block ~ ~ ~ ltextras:checkpoint[stage=1] run function lt:world_games/turtle/start
execute as @a[current_world=true,tag=world_game.turtle_active] at @s run function lt:world_games/turtle/player_tick
