execute if entity @a[tag=hole_7_player] run title @p[tag=!hole_7_player] actionbar ["",{"selector":"@p[tag=hole_7_player]"},{"text":" Is already on this hole. Please wait your turn.","color":"#ED8754"}]
execute unless entity @a[tag=hole_7_player] run function lt:game/minigolf/holes/hole_7/start_hole
