# Delete scoreboard objectives
scoreboard objectives remove r.o.global
scoreboard objectives remove r.o.time_min
scoreboard objectives remove r.o.time_sec
scoreboard objectives remove r.o.time_mil
scoreboard objectives remove r.o.ticks_check1
scoreboard objectives remove r.o.ticks_check2
scoreboard objectives remove r.o.ticks_check3
scoreboard objectives remove r.o.ticks_check4
scoreboard objectives remove r.o.current_time
scoreboard objectives remove r.o.p_checkpoint
scoreboard objectives remove r.o.p_placement
scoreboard objectives remove r.o.p_lap
scoreboard objectives remove r.o.p_tp_delay
scoreboard objectives remove r.o.p_boost_time


# Disable games 'on_tick' functionality
scoreboard players set game.party.turtle_race.one_way.active main.global 0

# Remove player tags
tag @a remove game.party.turtle_race.one_way.player.competitor
tag @a remove game.party.turtle_race.one_way.player.opectator
tag @a remove game.party.turtle_race.one_way.player
tag @a remove game.party.turtle_race.one_way.player.competitor.finished_race
tag @a remove turtle_race.one_way.been_distributed
tag @e remove turtle_race.one_way.marker.has_player

# remove bossbars
bossbar remove lt:game.party.turtle_race.one_way.lap_display.1st
bossbar remove lt:game.party.turtle_race.one_way.lap_display.2nd
bossbar remove lt:game.party.turtle_race.one_way.lap_display.3rd
bossbar remove lt:game.party.turtle_race.one_way.lap_display.final
bossbar remove lt:game.party.turtle_race.one_way.time_display
bossbar remove lt:game.party.turtle_race.one_way.win_position_display.1st
bossbar remove lt:game.party.turtle_race.one_way.win_position_display.2nd
bossbar remove lt:game.party.turtle_race.one_way.win_position_display.3rd
bossbar remove lt:game.party.turtle_race.one_way.win_position_display.finished

# Clear scheduled functions
schedule clear lt:game/party/race_one_way/countdown/start
schedule clear lt:game/party/race_one_way/countdown/fp_1
schedule clear lt:game/party/race_one_way/countdown/fp_2
schedule clear lt:game/party/race_one_way/countdown/fp_3
schedule clear lt:game/party/race_one_way/countdown/fp_4
schedule clear lt:game/party/race_one_way/countdown/fp_5

# Temp Kill
kill @e[tag=turtle_race.one_way.entity.turtle]
