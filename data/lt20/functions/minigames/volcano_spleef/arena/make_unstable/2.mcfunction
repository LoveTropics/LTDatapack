scoreboard players set GameStage SpleefGlobal 2
title @a[tag=spleef_player] title " "
title @a[tag=spleef_player] subtitle [{"text":"The second layer has become unstable!","color":"red"}]
tellraw @a [{"text":">>>","color":"gray"},{"text":"The second layer has become unstable and can no-longer support the weight of players.","color":"yellow"}]
schedule function lt20:minigames/volcano_spleef/arena/make_unstable/3 40s
fill -753 180 2733 -800 180 2690 air replace #lt20:spleef_layer
