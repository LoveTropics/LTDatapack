execute as @a[tag=sigrun_player] at @s run playsound minecraft:block.note_block.bell master @s
title @a[tag=sigrun_player] title [{"text":"⇨3⇦","color":"red","bold":true}]
schedule function lt20:minigames/signature_run/countdown/2 20t
scoreboard players set ReadyPlayers SignatureGlobal -1
clear @a[tag=sigrun_player]
