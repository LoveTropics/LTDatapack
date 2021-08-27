execute if score GameState BuildGlobal matches 1.. run function lt20:minigames/build_competition/game_active_tick
scoreboard players operation MinutesRemaining BuildGlobal = TimeRemaining BuildGlobal
scoreboard players operation MinutesRemaining BuildGlobal /= 1200Math BuildGlobal
forceload add -1299 1892 -1149 1964
