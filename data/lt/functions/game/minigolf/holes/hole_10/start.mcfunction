# Sends a message if someone else is palying
execute if entity @a[tag=hole_10_player] run title @p[tag=!hole_10_player] actionbar ["",{"selector":"@p[tag=hole_10_player]"},{"text":" Is already on this hole. Please wait your turn.","color":"#ED8754"}]
# Start hole if no one else is playing
execute unless entity @a[tag=hole_10_player] run function lt:game/minigolf/holes/hole_10/start_hole
