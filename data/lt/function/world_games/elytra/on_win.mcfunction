execute if score @s world_game.elytra.tracker < NeedPoints world_game.elytra.tracker run return run function lt:world_games/elytra/fail_no_enough
title @s subtitle {"translate": "lt.world_games.elytra.win.subtitle", "color": "gold"}
title @s title {"translate": "lt.world_games.elytra.win.title", "color": "gold"}
execute if score @s world_game.elytra.clock > @s world_game.elytra.scores run execute store result score @s world_game.elytra.scores run scoreboard players get @s world_game.elytra.clock
tellraw @s {"translate":"lt.world_games.elytra.win.time","with":[{"score":{"name":"@s","objective":"world_game.elytra.clock"}},{"score":{"name":"@s","objective":"world_game.elytra.scores"}}]}
tag @s remove world_game.elytra_active
collectible give @s lt:hat/bee
function lt:world_games/elytra/reset