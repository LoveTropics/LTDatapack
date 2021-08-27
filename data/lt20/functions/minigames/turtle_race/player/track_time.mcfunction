execute if score Mode TRaceGlobal matches 1 if score @s TRacePlayerS matches 10.. run title @s actionbar [{"text":"Final Time: ","color":"aqua"},{"score":{"name":"@s","objective":"TRacePlayerM"},"color":"yellow"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"TRacePlayerS"},"color":"yellow"}]
execute if score Mode TRaceGlobal matches 1 if score @s TRacePlayerS matches ..9 run title @s actionbar [{"text":"Final Time: ","color":"aqua"},{"score":{"name":"@s","objective":"TRacePlayerM"},"color":"yellow"},{"text":" : ","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerS"},"color":"yellow"}]

execute if score Mode TRaceGlobal matches 2 if score @s TRacePlayerPlace matches 1 run title @s actionbar [{"text":"You finished in 1st!","color":"aqua"}]
execute if score Mode TRaceGlobal matches 2 if score @s TRacePlayerPlace matches 2 run title @s actionbar [{"text":"You finished in 2nd!","color":"aqua"}]
execute if score Mode TRaceGlobal matches 2 if score @s TRacePlayerPlace matches 3 run title @s actionbar [{"text":"You finished in 3rd!","color":"aqua"}]
execute if score Mode TRaceGlobal matches 2 if score @s TRacePlayerPlace matches 4.. run title @s actionbar [{"text":"You finished in position: ","color":"aqua"},{"score":{"name":"@s","objective":"TRacePlayerPlace"}}]
