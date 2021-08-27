execute as @e[tag=sigrun_npc] at @s unless entity @e[tag=SignatureNPC,distance=..1.3,sort=nearest] run function lt20:minigames/desert_dig/utilities/rng_5
execute as @e[tag=sigrun_npc,scores={rngDD=5}] at @s unless entity @e[tag=SignatureNPC,distance=..1.3,sort=nearest] run function lt20:minigames/signature_run/temp/create_mooshroom_npc
execute as @e[tag=sigrun_npc,scores={rngDD=4}] at @s unless entity @e[tag=SignatureNPC,distance=..1.3,sort=nearest] run function lt20:minigames/signature_run/temp/create_iguana_npc
execute as @e[tag=sigrun_npc,scores={rngDD=3}] at @s unless entity @e[tag=SignatureNPC,distance=..1.3,sort=nearest] run function lt20:minigames/signature_run/temp/create_tropibee_npc
execute as @e[tag=sigrun_npc,scores={rngDD=2}] at @s unless entity @e[tag=SignatureNPC,distance=..1.3,sort=nearest] run function lt20:minigames/signature_run/temp/create_manowar_npc
execute as @e[tag=sigrun_npc,scores={rngDD=1}] at @s unless entity @e[tag=SignatureNPC,distance=..1.3,sort=nearest] run function lt20:minigames/signature_run/temp/create_pig_npc
team join SigRunCollision @e[tag=SigRunNPC]
execute as @e[tag=SignatureNPC,tag=!has_name] at @s run function lt20:minigames/desert_dig/utilities/rng_100
execute as @e[tag=SignatureNPC,tag=!has_name] at @s run function lt20:minigames/signature_run/npc/assign_npc_name
scoreboard players set @e[tag=SignatureNPC] NPCSigs 0
