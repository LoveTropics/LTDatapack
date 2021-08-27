execute as @e[tag=SignatureNPC,sort=random,limit=1,scores={NPCSigs=0}] at @s run function lt20:minigames/signature_run/npc/give_signature
scoreboard players remove SigsToGive SignatureGlobal 1
execute if score SigsToGive SignatureGlobal matches 1.. run function lt20:minigames/signature_run/npc/assign_signatures
