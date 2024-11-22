#Tick at every teleporter
execute as @e[tag=lt.system.teleporter] at @s run function lt:systems/teleporter/on_tick
execute as @e[tag=lt.system.teleporter_cents] at @s run function lt:systems/team_teleporter/on_tick_cents
execute as @e[tag=lt.system.teleporter_no_cents] at @s run function lt:systems/team_teleporter/on_tick_no_cents
function lt:systems/elevator/on_tick