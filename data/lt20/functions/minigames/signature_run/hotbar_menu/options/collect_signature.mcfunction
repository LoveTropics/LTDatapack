tag @s add collectingSig
execute as @e[tag=SigRunNPC,tag=SignatureNPC,sort=nearest,limit=1,distance=..2,scores={NPCSigs=1}] at @s run function lt20:minigames/signature_run/npc/lose_signature
scoreboard players add @s PlayerSigs 1

# Feedback
title @s times 0 10 5
title @s title {"text":"+1","color":"green","bold":true}
title @s subtitle {"text":"| Signature |","color":"yellow","bold":true}
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 2
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1
execute at @s run particle minecraft:totem_of_undying ~ ~2 ~ 0 0 0 0.25 50 force @s

# Remove Tag
tag @s remove collectingSig
