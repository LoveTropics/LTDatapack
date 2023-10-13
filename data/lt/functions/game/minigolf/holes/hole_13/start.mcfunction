# Sends a message if someone else is palying
execute if entity @a[tag=hole13Player] run title @p[tag=!hole13Player] actionbar ["",{"selector":"@p[tag=hole13Player]"},{"text":" Is already on this hole. Please wait your turn.","color":"#ED8754"}]
# Start hole if no one else is playing
execute unless entity @a[tag=hole13Player] run function lt:game/minigolf/holes/hole_13/start_hole
