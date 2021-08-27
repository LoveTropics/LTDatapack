title @s title {"text":"You win!","color":"gold"}
title @s subtitle [{"text":"Thanks for playing!","color":"yellow"}]
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s
tag @s remove spleef_player
effect clear @s
