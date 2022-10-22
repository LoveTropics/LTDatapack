execute if entity @a[tag=hole_3_player] run title @p[tag=!hole_3_player] actionbar ["",{"selector":"@p[tag=hole_3_player]"},{"text":" Is already on this hole. Please wait your turn.","color":"#ED8754"}]
execute unless entity @a[tag=hole_3_player] run function lt:game/minigolf/holes/hole_3/start_hole
