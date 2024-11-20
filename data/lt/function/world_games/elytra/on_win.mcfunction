execute if score @s world_game.elytra.tracker matches ..18 run return run tellraw @s {"translate": "lt.world_games.elytra.fail_checkpoints", "color": "gold"}
title @s subtitle {"translate": "lt.world_games.elytra.win.subtitle", "color": "gold"}
title @s title {"translate": "lt.world_games.elytra.win.title", "color": "gold"}
execute store result score @s world_game.elytra.scores run scoreboard players get @s world_game.elytra.clock
tellraw @s {"translate":"lt.world_games.elytra.win.time","with":[{"score":{"name":"@s","objective":"world_game.elytra.scores"}}]}
tag @s remove world_game.elytra_active
collectible give @s lt:hat/bee
