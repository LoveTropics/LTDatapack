tellraw @a [{"selector":"@a[tag=is_launching_shock_rocket,limit=1,sort=nearest]","color":"aqua"},{"text":" just hit ","color":"yellow"},{"selector":"@s","color":"dark_aqua"},{"text":" with a shock rocket!","color":"yellow"}]
execute as @a[tag=is_launching_shock_rocket] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 2 1
tag @a remove is_launching_shock_rocket
kill @e[tag=shock_rocket]
title @s times 0 25 0
title @s title " "
title @s subtitle {"text":"| You've been Shock Rocketed! |","color":"red"}
scoreboard players set @e[tag=racing_turtle,sort=nearest,limit=1,distance=..2] TRaceShockTime 75
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 2 1.5
