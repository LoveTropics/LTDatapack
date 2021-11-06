# Distribute executing player
tp @s @e[tag=turtle_race.one_way.marker.player_spawn,tag=!turtle_race.one_way.marker.has_player,limit=1,sort=random]
execute as @s at @s run tag @e[tag=turtle_race.one_way.marker.player_spawn,limit=1,sort=nearest,distance=..2] add turtle_race.one_way.marker.has_player
tag @s add turtle_race.one_way.been_distributed

# Select new player to distribute
execute as @a[tag=game.party.turtle_race.one_way.player.competitor,tag=!turtle_race.one_way.been_distributed,limit=1,sort=random] at @s run function lt:game/party/race_one_way/player/distribute_player