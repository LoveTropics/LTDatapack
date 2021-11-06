# Remove lingering tags
tag @a remove game.party.turtle_race.one_way.player.competitor
tag @a remove game.party.turtle_race.one_way.player.opectator
tag @a remove game.party.turtle_race.one_way.player
tag @a remove turtle_race.one_way.been_distributed

# Create scoreboard objectives
scoreboard objectives add r.o.global dummy
scoreboard objectives add r.o.time_min dummy
scoreboard objectives add r.o.time_sec dummy
scoreboard objectives add r.o.time_mil dummy
scoreboard objectives add r.o.ticks_check1 dummy
scoreboard objectives add r.o.ticks_check2 dummy
scoreboard objectives add r.o.ticks_check3 dummy
scoreboard objectives add r.o.ticks_check4 dummy
scoreboard objectives add r.o.current_time dummy
scoreboard objectives add r.o.p_checkpoint dummy
scoreboard objectives add r.o.p_placement dummy
scoreboard objectives add r.o.p_lap dummy
scoreboard objectives add r.o.p_tp_delay dummy
scoreboard objectives add r.o.p_boost_time dummy

# Set starting scores
scoreboard players set state r.o.global 0
scoreboard players set ticks_since_start r.o.global 0
scoreboard players set players_on_turtles r.o.global 0
scoreboard players set time_since_all_mounted r.o.global 260
scoreboard players set finishers r.o.global 0
scoreboard players set turtles_with_riders r.o.global 0



# Create bossbars
bossbar add lt:game.party.turtle_race.one_way.lap_display.1st [{"text": "| ","color": "dark_gray"},{"text": "0","color": "yellow"},{"text": ":","color": "gray"},{"text": "00","color": "yellow"},{"text": ":","color": "gray"},{"text": "00","color": "yellow"},{"text": " |","color": "dark_gray"}]
bossbar add lt:game.party.turtle_race.one_way.lap_display.2nd [{"text": "| ","color": "dark_gray"},{"text": "0","color": "yellow"},{"text": ":","color": "gray"},{"text": "00","color": "yellow"},{"text": ":","color": "gray"},{"text": "00","color": "yellow"},{"text": " |","color": "dark_gray"}]
bossbar add lt:game.party.turtle_race.one_way.lap_display.3rd [{"text": "| ","color": "dark_gray"},{"text": "0","color": "yellow"},{"text": ":","color": "gray"},{"text": "00","color": "yellow"},{"text": ":","color": "gray"},{"text": "00","color": "yellow"},{"text": " |","color": "dark_gray"}]
bossbar add lt:game.party.turtle_race.one_way.lap_display.final [{"text": "| ","color": "dark_gray"},{"text": "0","color": "yellow"},{"text": ":","color": "gray"},{"text": "00","color": "yellow"},{"text": ":","color": "gray"},{"text": "00","color": "yellow"},{"text": " |","color": "dark_gray"}]
bossbar add lt:game.party.turtle_race.one_way.time_display [{"text": "| ","color": "dark_gray"},{"text": "0","color": "yellow"},{"text": ":","color": "gray"},{"text": "00","color": "yellow"},{"text": ":","color": "gray"},{"text": "00","color": "yellow"},{"text": " |","color": "dark_gray"}]
bossbar add lt:game.party.turtle_race.one_way.win_position_display.1st {"text": "You placed 1st!","color": "#77A12F","bold": true}
bossbar add lt:game.party.turtle_race.one_way.win_position_display.2nd {"text": "You placed 2nd!","color": "#77A12F","bold": true}
bossbar add lt:game.party.turtle_race.one_way.win_position_display.3rd {"text": "You placed 3rd!","color": "#77A12F","bold": true}
bossbar add lt:game.party.turtle_race.one_way.win_position_display.finished {"text": "You completed the race!","color": "#77A12F","bold": false}

# Modify bossbars
# Color
bossbar set lt:game.party.turtle_race.one_way.lap_display.1st color red
bossbar set lt:game.party.turtle_race.one_way.lap_display.2nd color pink
bossbar set lt:game.party.turtle_race.one_way.lap_display.3rd color blue
bossbar set lt:game.party.turtle_race.one_way.lap_display.final color green
bossbar set lt:game.party.turtle_race.one_way.win_position_display.1st color yellow
bossbar set lt:game.party.turtle_race.one_way.win_position_display.2nd color yellow
bossbar set lt:game.party.turtle_race.one_way.win_position_display.3rd color yellow
bossbar set lt:game.party.turtle_race.one_way.win_position_display.finished color yellow
bossbar set lt:game.party.turtle_race.one_way.time_display color white
# Players
#bossbar set lt:game.party.turtle_race.one_way.lap_display.1st players @a[tag=game.party.turtle_race.one_way.player.competitor]
#bossbar set lt:game.party.turtle_race.one_way.lap_display.2nd players @a[tag=game.party.turtle_race.one_way.player.competitor]
#bossbar set lt:game.party.turtle_race.one_way.lap_display.3rd players @a[tag=game.party.turtle_race.one_way.player.competitor]
#bossbar set lt:game.party.turtle_race.one_way.lap_display.final players @a[tag=game.party.turtle_race.one_way.player.competitor]

# Visibility
bossbar set lt:game.party.turtle_race.one_way.lap_display.1st visible true
bossbar set lt:game.party.turtle_race.one_way.lap_display.2nd visible true
bossbar set lt:game.party.turtle_race.one_way.lap_display.3rd visible true
bossbar set lt:game.party.turtle_race.one_way.lap_display.final visible true


# Load settings
function lt:game/party/race_one_way/settings
