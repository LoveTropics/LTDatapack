# Stop Them form playing if all ready playing a hole
execute @s[tag=golfInGame] run function lt:game/minigolf/core/in_hole
# Sends a message if someone else is palying
execute if @s[tag=!golfInGame] if entity @a[tag=hole11Player] run title @p[tag=!hole11Player] actionbar ["",{"selector":"@p[tag=hole11Player]"},{"text":" Is already on this hole. Please wait your turn.","color":"#ED8754"}]
# Start hole if no one else is playing
execute if @s[tag=!golfInGame] unless entity @a[tag=hole11Player] run function lt:game/minigolf/holes/hole_11/start_hole
