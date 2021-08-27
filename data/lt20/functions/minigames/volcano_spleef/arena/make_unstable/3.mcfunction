scoreboard players set GameStage SpleefGlobal 3
title @a[tag=spleef_player] title " "
title @a[tag=spleef_player] subtitle [{"text":"The last layer has become unstable!","color":"red"}]
tellraw @a [{"text":">>>","color":"gray"},{"text":"The final layer has become unstable and can no-longer support the weight of players.","color":"yellow"}]
fill -753 170 2733 -800 170 2690 air replace #lt20:spleef_layer
