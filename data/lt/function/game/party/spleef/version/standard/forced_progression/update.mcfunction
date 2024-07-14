execute if score current_forced_progression s.global matches 1 run function lt:game/party/spleef/version/standard/forced_progression/stage_1
execute if score current_forced_progression s.global matches 2 run function lt:game/party/spleef/version/standard/forced_progression/stage_2
execute if score current_forced_progression s.global matches 3 run function lt:game/party/spleef/version/standard/forced_progression/stage_3
execute if score current_forced_progression s.global matches 4 run function lt:game/party/spleef/version/standard/forced_progression/stage_4
execute if score current_forced_progression s.global matches 5 run function lt:game/party/spleef/version/standard/forced_progression/stage_5

execute if score current_forced_progression s.global >= max_forced_progressions s.global run scoreboard players set time_to_forced_progression s.global -1
execute if score current_forced_progression s.global >= max_forced_progressions s.global run scoreboard players set current_forced_progression s.global -1
execute if score current_forced_progression s.global < max_forced_progressions s.global run scoreboard players add current_forced_progression s.global 1