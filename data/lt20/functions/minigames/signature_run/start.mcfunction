tag @e[tag=SigRunStartMarker] remove has_player
scoreboard players set GameState SignatureGlobal 2
scoreboard players set SecsLeft SignatureGlobal 900
scoreboard players set ReadyPlayer -1
execute as @a[tag=sigrun_player] at @s run function lt20:minigames/signature_run/player/teleport_player
execute as @a[tag=sigrun_player] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1
title @a[tag=sigrun_player] times 5 20 5
title @a[tag=sigrun_player] title [{"text":"Run!","color":"aqua","bold":true}]
effect clear @a[tag=sigrun_player] invisibility
effect clear @a[tag=sigrun_player] weakness
scoreboard objectives setdisplay sidebar SigStats
scoreboard players set PreviousOhNo SignatureGlobal 0
function lt20:minigames/signature_run/npc/assign_signatures
