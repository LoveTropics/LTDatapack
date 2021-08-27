execute as @s[tag=SignatureClerk] at @s run execute as @a[tag=PlayerInteracted] at @s unless score @s PlayerSigs matches ..0 run function lt20:minigames/signature_run/player/hand_in_signatures
execute as @s[tag=SignatureClerk] at @s run execute as @a[tag=PlayerInteracted] at @s if score @s PlayerSigs matches ..0 run function lt20:minigames/signature_run/player/no_signatures
