execute if entity @a[tag=hole_4_player] run title @p[tag=!hole_4_player] actionbar ["",{"selector":"@p[tag=hole_4_player]"},{"text":" Is already on this hole. Please wait your turn.","color":"#ED8754"}]
execute unless entity @a[tag=hole_4_player] run function lt:game/minigolf/holes/hole_4/start_hole
