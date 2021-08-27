title @s title {"text":"Your Out!","color":"yellow"}
title @s title {"text":""}
execute as @s at @s run tellraw @a[tag=spleef_player] [{"selector":"@s","color":"red"},{"text":" has fallen to the volcano!","color":"yellow"}]
execute as @a[tag=spleef_player] at @s run playsound minecraft:entity.ender_dragon.growl master @s
tp @s -777 192 2713
execute at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 0
clear @s
tag @s remove spleef_player
effect clear @s
