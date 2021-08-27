tag @s add PlayerInteracted
execute as @e[tag=SigRunNPC,sort=nearest,distance=..2,limit=1] at @s run function lt20:minigames/signature_run/npc/interacted_with
