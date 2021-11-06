# Enable games 'on_tick' functionality
scoreboard players set game.party.turtle_race.standard.active main.global 1

# Set starting state
scoreboard players set state r.s.global 1

# Distribute players
execute as @a[tag=game.party.turtle_race.standard.player.competitor,tag=!turtle_race.standard.been_distributed,limit=1,sort=random] at @s run function lt:game/party/race_standard/player/distribute_player

# Delay spawning turtles for 3 seconds
schedule function lt:game/party/race_standard/countdown/spawn_turtles 1.5s

# Get Number of players
execute as @a[tag=game.party.turtle_race.standard.player.competitor] run scoreboard players add SETATSTART.PLAYER_COUNT r.s.global 1

# things that need to be done after settings have been loaded but before the game has started
bossbar set lt:game.party.turtle_race.standard.lap_display.1st players @a[tag=game.party.turtle_race.standard.player.competitor]
bossbar set lt:game.party.turtle_race.standard.time_display players @a[tag=game.party.turtle_race.standard.player.spectator]
#
