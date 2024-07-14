scoreboard players set Players disguise.cloneing 0
execute as @a[distance=..2] run scoreboard players add Players disguise.cloneing 1
#Todo Update Message
execute if score Players disguise.cloneing matches 2.. run tellraw @a[distance=..2] {"translate":"lt.disguise.to_many_players"}
execute if score Players disguise.cloneing matches 1 run execute as @p at @s run function lt:diguises/clone/stages/stage_start_clone
