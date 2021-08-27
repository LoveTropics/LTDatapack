execute as @a[tag=turtle_racer] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.25 1
title @a[tag=turtle_racer] title [{"text":"⇨3⇦","color":"red","bold":true}]
schedule function lt20:minigames/turtle_race/countdown/2 20t
scoreboard players reset TimeToCancel TRaceGlobal
title @a subtitle " "
