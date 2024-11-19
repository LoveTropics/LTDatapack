scoreboard players set Players disguise.cloneing 0
execute as @a[distance=..2] run scoreboard players add Players disguise.cloneing 1
execute if score Players disguise.cloneing matches 2.. run tellraw @a[distance=..2] {"translate":"lt.disguise.to_many_players"}
execute if score Players disguise.cloneing matches 1 run execute as @e[tag=disguises.player.cloned,limit=1] at @s run function lt:diguises/clone/stages/stage_start_clone with entity @p