# Enable games 'on_tick' functionality
scoreboard players set game.party.turtle_race.one_way.active main.global 1

# Set starting state
scoreboard players set state r.o.global 1

# Distribute players
execute as @a[tag=game.party.turtle_race.one_way.player.competitor,tag=!turtle_race.one_way.been_distributed,limit=1,sort=random] at @s run function lt:game/party/race_one_way/player/distribute_player

# Delay spawning turtles for 3 seconds
schedule function lt:game/party/race_one_way/countdown/spawn_turtles 1.5s

# Get Number of players
execute as @a[tag=game.party.turtle_race.one_way.player.competitor] run scoreboard players add SETATSTART.PLAYER_COUNT r.o.global 1

# things that need to be done after settings have been loaded but before the game has started
bossbar set lt:game.party.turtle_race.one_way.time_display players @a[tag=game.party.turtle_race.one_way.player]
#
