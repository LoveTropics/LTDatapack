scoreboard players set GameState SpleefGlobal 2
execute as @a[tag=spleef_player] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 10 1
title @a[tag=spleef_player] title [{"text":"0","color":"gray","obfuscated":true},{"text":" Mine! ","color":"green","bold":true,"obfuscated":false},{"text":"0","color":"gray","obfuscated":true}]
schedule function lt20:minigames/volcano_spleef/arena/make_unstable/1 35s
