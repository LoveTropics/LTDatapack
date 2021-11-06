tag @s remove game.party.turtle_race.one_way.player.competitor
tag @s remove game.party.turtle_race.one_way.player.opectator
tag @s remove game.party.turtle_race.one_way.player
tag @s remove game.party.turtle_race.one_way.player.competitor.finished_race
tag @s remove turtle_race.one_way.been_distributed
tag @s remove turtle_race.one_way.marker.has_player

scoreboard players reset @s r.o.ticks_check1
scoreboard players reset @s r.o.ticks_check2
scoreboard players reset @s r.o.ticks_check3
scoreboard players reset @s r.o.ticks_check4
scoreboard players reset @s r.o.current_time
scoreboard players reset @s r.o.p_checkpoint
scoreboard players reset @s r.o.p_placement
scoreboard players reset @s r.o.p_lap
scoreboard players reset @s r.o.p_tp_delay
scoreboard players reset @s r.o.p_boost_time

scoreboard players remove SETATSTART.PLAYER_COUNT r.o.global 1
