# Set title
title @a[tag=game.party.turtle_race.standard.player] times 5 20 5
title @a[tag=game.party.turtle_race.standard.player] title " "
title @a[tag=game.party.turtle_race.standard.player] subtitle " "



# Make bossbar visible
bossbar set lt:game.party.turtle_race.standard.lap_display.1st players @a[tag=game.party.turtle_race.standard.player.competitor]

# Play sound
execute as @a[tag=game.party.turtle_race.standard.player] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 2 1
function lt:game/party/race_standard/player/release_players

# Make all players pass the first checkpoint when the game starts
execute as @a[tag=game.party.turtle_race.standard.player.competitor] at @s run function lt:game/party/race_standard/player/pass_checkpoint

# Update Game State
scoreboard players set state r.s.global 3

# give player scores
scoreboard players set @a[tag=game.party.turtle_race.standard.player.competitor] r.s.p_boost_time 175
