kill @e[tag=code_violation_pickup,distance=..3,limit=1,sort=nearest]


# Feedback
title @s times 0 20 5
title @s title {"text":"+1","color":"yellow","bold":true}
title @s subtitle {"text":"| Code Violation |","color":"red","bold":true}
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 1
execute at @s run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.25 50 force @s

scoreboard players add Code-Violations SigStats 1
execute as @s at @s run tellraw @a [{"selector":"@s","color":"green"},{"text":" has collected a ","color":"yellow"},{"text":"Code-Violation.","color":"red","bold":true},{"text":" It can be used to stop the timer or fix ","color":"yellow"},{"text":"Oh No! ","color":"dark_red"},{"text":"events","color":"yellow"}]
