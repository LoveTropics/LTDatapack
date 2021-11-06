# Delete scoreboard objectives
scoreboard objectives remove r.s.global
scoreboard objectives remove r.s.time_min
scoreboard objectives remove r.s.time_sec
scoreboard objectives remove r.s.time_mil
scoreboard objectives remove r.s.ticks_check1
scoreboard objectives remove r.s.ticks_check2
scoreboard objectives remove r.s.ticks_check3
scoreboard objectives remove r.s.ticks_check4
scoreboard objectives remove r.s.current_time
scoreboard objectives remove r.s.p_checkpoint
scoreboard objectives remove r.s.p_placement
scoreboard objectives remove r.s.p_lap
scoreboard objectives remove r.s.p_tp_delay
scoreboard objectives remove r.s.p_boost_time


# Disable games 'on_tick' functionality
scoreboard players set game.party.turtle_race.standard.active main.global 0

# Remove player tags
tag @a remove game.party.turtle_race.standard.player.competitor
tag @a remove game.party.turtle_race.standard.player.spectator
tag @a remove game.party.turtle_race.standard.player
tag @a remove game.party.turtle_race.standard.player.competitor.finished_race
tag @a remove turtle_race.standard.been_distributed
tag @e remove turtle_race.standard.marker.has_player

# remove bossbars
bossbar remove lt:game.party.turtle_race.standard.lap_display.1st
bossbar remove lt:game.party.turtle_race.standard.lap_display.2nd
bossbar remove lt:game.party.turtle_race.standard.lap_display.3rd
bossbar remove lt:game.party.turtle_race.standard.lap_display.final
bossbar remove lt:game.party.turtle_race.standard.time_display
bossbar remove lt:game.party.turtle_race.standard.win_position_display.1st
bossbar remove lt:game.party.turtle_race.standard.win_position_display.2nd
bossbar remove lt:game.party.turtle_race.standard.win_position_display.3rd
bossbar remove lt:game.party.turtle_race.standard.win_position_display.finished

# Clear scheduled functions
schedule clear lt:game/party/race_standard/countdown/start
schedule clear lt:game/party/race_standard/countdown/fp_1
schedule clear lt:game/party/race_standard/countdown/fp_2
schedule clear lt:game/party/race_standard/countdown/fp_3
schedule clear lt:game/party/race_standard/countdown/fp_4
schedule clear lt:game/party/race_standard/countdown/fp_5

# Temp Kill
kill @e[tag=turtle_race.standard.entity.turtle]
