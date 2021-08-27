team leave @e[tag=SignatureNPC]
scoreboard players reset * NPCSigs
team join SigRunCollision @e[tag=SignatureNPC]
scoreboard players set GameState SignatureGlobal 1
#function lt20:minigames/signature_run/npc/create_npc/spawn_npcs
scoreboard players set @e[tag=SignatureNPC] NPCSigs 0
scoreboard players set SigsToGive SignatureGlobal 85
