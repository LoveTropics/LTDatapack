#Tick at every teleporter
execute as @e[tag=lt.system.teleporter] at @s run function lt:systems/teleporter/on_tick
function lt:systems/elevator/on_tick