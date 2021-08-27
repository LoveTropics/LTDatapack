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

effect clear @a[tag=spleef_player]
tag @a remove spleef_player
function lt20:minigames/volcano_spleef/reset
minigame finish
