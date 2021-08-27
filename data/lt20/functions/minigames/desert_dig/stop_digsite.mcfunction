title @a[tag=digsite_player] title " "
title @a[tag=digsite_player] subtitle {"text":"Thanks for playing!","color":"blue","bold":true}
tag @a[tag=digsite_player] remove digsite_player
scoreboard players set GameState DigsiteGlobal 0
scoreboard players reset * Digsite
kill @e[tag=explosive_silverfish]
kill @e[tag=powerup]
scoreboard players set TimeToScoreHide DigsiteGlobal 600
minigame finish
