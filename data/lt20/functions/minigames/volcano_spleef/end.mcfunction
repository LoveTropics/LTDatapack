title @a[tag=!spleef_player] title [{"selector":"@a[tag=spleef_player]","color":"aqua","bold":true},{"text":" Wins!","color":"gold"}]
title @a[tag=!spleef_player] subtitle [{"text":"Thanks for playing ","color":"yellow"},{"text":"Volcano Spleef","color":"dark_red"}]
execute as @a[tag=spleef_player] at @s run function lt20:minigames/volcano_spleef/player/win
tag @a remove spleef_player
function lt20:minigames/volcano_spleef/reset
# Clears scheduled functions
schedule clear lt20:minigames/volcano_spleef/arena/make_unstable/1
schedule clear lt20:minigames/volcano_spleef/arena/make_unstable/2
schedule clear lt20:minigames/volcano_spleef/arena/make_unstable/3
schedule clear lt20:minigames/volcano_spleef/countdown/1
schedule clear lt20:minigames/volcano_spleef/countdown/2
schedule clear lt20:minigames/volcano_spleef/countdown/3
schedule clear lt20:minigames/volcano_spleef/countdown/4
schedule clear lt20:minigames/volcano_spleef/countdown/5
schedule clear lt20:minigames/volcano_spleef/start

# Stops integrated minigame system
minigame finish
