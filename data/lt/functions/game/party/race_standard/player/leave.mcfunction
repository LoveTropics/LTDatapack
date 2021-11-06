tag @s remove game.party.turtle_race.standard.player.competitor
tag @s remove game.party.turtle_race.standard.player.spectator
tag @s remove game.party.turtle_race.standard.player
tag @s remove game.party.turtle_race.standard.player.competitor.finished_race
tag @s remove turtle_race.standard.been_distributed
tag @s remove turtle_race.standard.marker.has_player

scoreboard players reset @s r.s.ticks_check1
scoreboard players reset @s r.s.ticks_check2
scoreboard players reset @s r.s.ticks_check3
scoreboard players reset @s r.s.ticks_check4
scoreboard players reset @s r.s.current_time
scoreboard players reset @s r.s.p_checkpoint
scoreboard players reset @s r.s.p_placement
scoreboard players reset @s r.s.p_lap
scoreboard players reset @s r.s.p_tp_delay
scoreboard players reset @s r.s.p_boost_time

scoreboard players remove SETATSTART.PLAYER_COUNT r.s.global 1
