# Sends a message if someone else is palying
execute if entity @a[tag=hole17Player] run title @p[tag=!hole17Player] actionbar ["",{"selector":"@p[tag=hole17Player]"},{"text":" Is already on this hole. Please wait your turn.","color":"#ED8754"}]
# Start hole if no one else is playing
execute unless entity @a[tag=hole17Player] run function lt:game/minigolf/holes/hole_17/start_hole
