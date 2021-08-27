execute as @a[tag=turtle_racer] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.25 1
title @a[tag=turtle_racer] title [{"text":"⇨5⇦","color":"red","bold":true}]
title @a subtitle " "
schedule function lt20:minigames/turtle_race/countdown/4 20t
scoreboard players reset TimeToCancel TRaceGlobal
scoreboard players reset TimeToDrop TRaceGlobal
