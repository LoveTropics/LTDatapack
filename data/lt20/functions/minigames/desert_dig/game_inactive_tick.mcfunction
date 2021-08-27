execute if score GameState DigsiteGlobal matches 1 run function lt20:minigames/desert_dig/game_active_tick

execute if entity @e[tag=create_digsite] run function lt20:minigames/desert_dig/create_digsite
execute if entity @e[tag=delete_digsite] run function lt20:minigames/desert_dig/delete_digsite

execute if score TimeToScoreHide DigsiteGlobal matches 1.. run scoreboard players remove TimeToScoreHide DigsiteGlobal 1
execute if score TimeToScoreHide DigsiteGlobal matches 0 run scoreboard objectives setdisplay sidebar
execute if score TimeToScoreHide DigsiteGlobal matches 0 run scoreboard players reset TimeToScoreHide DigsiteGlobal
