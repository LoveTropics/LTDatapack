# Sends a message if someone else is palying
execute if entity @a[tag=hole18Player] run title @p[tag=!hole18Player] actionbar ["",{"selector":"@p[tag=hole18Player]"},{"text":" Is already on this hole. Please wait your turn.","color":"#ED8754"}]
# Start hole if no one else is playing
execute unless entity @a[tag=hole18Player] run function lt:game/minigolf/holes/hole_18/start_hole
