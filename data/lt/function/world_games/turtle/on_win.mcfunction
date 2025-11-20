execute if score @s world_game.turtle.tracker < NeedPoints world_game.turtle.tracker run return run function lt:world_games/turtle/fail_no_enough
execute on vehicle run kill @s
title @s subtitle {"translate": "lt.world_games.turtle.win.subtitle", "color": "gold"}
title @s title {"translate": "lt.world_games.turtle.win.title", "color": "gold"}
execute if score @s world_game.turtle.clock < @s world_game.turtle.scores run execute store result score @s world_game.turtle.scores run scoreboard players get @s world_game.turtle.clock
tellraw @s {"translate":"lt.world_games.turtle.win.time","with":[{"score":{"name":"@s","objective":"world_game.turtle.clock"}},{"score":{"name":"@s","objective":"world_game.turtle.scores"}}]}
tag @s remove world_game.turtle_active
tp @s 964 137 -1218 0 0
function lt:world_games/turtle/reset
