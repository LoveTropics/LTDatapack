tag @s add ready
tellraw @a[tag=sigrun_player] [{"selector":"@s","color":"gray"},{"text":" has readied up.","color":"yellow"}]
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1
kill @e[type=item]
scoreboard players add ReadyPlayers SignatureGlobal 1
