particle minecraft:block minecraft:slime_block ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if entity @p[distance=..1.5] run execute as @p at @s run function lt:game/stt/entity/get_slimed