# Stop Them form playing if all ready playing a hole
execute if entity @s[tag=golfInGame] run function lt:game/minigolf/core/in_hole
# Sends a message if someone else is palying
execute if entity @s[tag=!golfInGame] if entity @a[tag=hole07Player,current_world=true] run title @p[tag=!hole07Player] actionbar ["",{"selector":"@p[tag=hole07Player]"},{"translate":"lt.golf.in_use","color":"#ED8754"}]
# Start hole if no one else is playing
execute if entity @s[tag=!golfInGame] unless entity @a[tag=hole07Player,current_world=true] run function lt:game/minigolf/holes/hole_07/start_hole
