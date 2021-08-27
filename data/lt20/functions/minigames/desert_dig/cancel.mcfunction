title @a[tag=digsite_player] title " "
title @a[tag=digsite_player] subtitle {"text":"Game cancelled in progress ...","color":"blue","bold":true}
tag @a[tag=digsite_player] remove digsite_player
scoreboard players set GameState DigsiteGlobal 0
scoreboard players reset * Digsite
scoreboard players reset * digsitescore
scoreboard objectives setdisplay sidebar
kill @e[tag=explosive_silverfish]
minigame finish
