# Set title
title @a[tag=game.party.turtle_race.one_way.player] times 5 20 5
title @a[tag=game.party.turtle_race.one_way.player] title " "
title @a[tag=game.party.turtle_race.one_way.player] subtitle " "



# Make bossbar visible
bossbar set lt:game.party.turtle_race.one_way.lap_display.1st players @a[tag=game.party.turtle_race.one_way.player.competitor]

# Play sound
execute as @a[tag=game.party.turtle_race.one_way.player] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 2 1
function lt:game/party/race_one_way/player/release_players

# Make all players pass the first checkpoint when the game starts
execute as @a[tag=game.party.turtle_race.one_way.player.competitor] at @s run function lt:game/party/race_one_way/player/pass_checkpoint

# Update Game State
scoreboard players set state r.o.global 3

# give player scores
scoreboard players set @a[tag=game.party.turtle_race.one_way.player.competitor] r.o.p_boost_time 175
