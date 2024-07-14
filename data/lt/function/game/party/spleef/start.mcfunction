# Enable games 'on_tick' functionality
scoreboard players set game.party.spleef.active main.global 1

# Makes bossbar visible
bossbar set lt:game.party.spleef.forced_progression_bar visible true

# things that need to be done after settings have been loaded but before the game has started
bossbar set lt:game.party.spleef.forced_progression_bar players @a[tag=game.party.spleef.player]
bossbar set lt:game.party.spleef.forced_progression_bar visible true
bossbar set lt:game.party.spleef.winner_bar players @a[tag=game.party.spleef.player]
scoreboard players operation time_to_forced_progression s.global = SETTING.FLOOR1_TIME_TO_FP s.global
scoreboard players operation s.time_to_fp utility.math5 = time_to_forced_progression s.global
scoreboard players operation s.time_to_fp utility.math5 /= 20 main.number
#bossbar set lt:game.party.spleef.forced_progression_bar name [{"text":"Forced Progression in: ","color":"#ACC12F","bold":true},{"score":{"name":"s.time_to_fp","objective":"utility.math5"},"color":"white","bold":false}]
bossbar set lt:game.party.spleef.forced_progression_bar name [{"text":"Prepare for Spleef!","color":"#ACC12F","bold":true}]



scoreboard players operation max_forced_progressions s.global = SETTING.TOTAL_FLOORS s.global
scoreboard players set current_forced_progression s.global 1

scoreboard players set forced_progression_active_to s.global 0

# Call floor sets based on loaded settings
execute if score SETTING.FLOOR_MATERIAL s.global matches 1 run function lt:game/party/spleef/map/set_floor/obsidian_1
execute if score SETTING.FLOOR_MATERIAL s.global matches 2 run function lt:game/party/spleef/map/set_floor/tnt_2
#

# Call countdown function fp_5
schedule function lt:game/party/spleef/countdown/fp_10 5s
