kill @e[tag=arbitor]
execute at @e[tag=sigrun_player,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:["arbitor"],NoGravity:1b,Invisible:1b,Marker:1b}
execute as @e[tag=arbitor] at @s run function lt20:server_handler/utilities/rng_2
execute if score @e[tag=arbitor,limit=1] rngDD = PreviousOhNo SignatureGlobal if score PreviousOhNo SignatureGlobal matches 1.. run function lt20:minigames/signature_run/events/spawn_random_event

execute if score @e[tag=arbitor,limit=1] rngDD matches 1 run function lt20:minigames/signature_run/events/event_start/log_crash_1
execute if score @e[tag=arbitor,limit=1] rngDD matches 2 run function lt20:minigames/signature_run/events/event_start/log_crash_2
kill @e[tag=arbitor]
