scoreboard players set GameStage SpleefGlobal 1
title @a[tag=spleef_player] title " "
title @a[tag=spleef_player] subtitle [{"text":"The first layer has become unstable!","color":"red"}]
tellraw @a [{"text":">>>","color":"gray"},{"text":"The first layer has become unstable and can no-longer support the weight of players.","color":"yellow"}]
schedule function lt20:minigames/volcano_spleef/arena/make_unstable/2 40s
