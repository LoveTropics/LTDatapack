tellraw @a[tag=game.party.turtle_race.one_way.player] [{"text":">>> ","color":"gray"},{"text":"Turtle Race ❯ Race Closed!","color":"yellow"}]
execute as @a[tag=game.party.turtle_race.one_way.player] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2 0.5
schedule function lt:game/party/race_one_way/player/start_end_game 3s
schedule function lt:game/party/race_one_way/player/announce_winners 1s
scoreboard players set state s.global 4
title @a[tag=game.party.turtle_race.one_way.player.competitor,tag=!game.party.turtle_race.one_way.player.competitor.finished_race] times 0 30 0
title @a[tag=game.party.turtle_race.one_way.player.competitor,tag=!game.party.turtle_race.one_way.player.competitor.finished_race] title {"text":"✖ DNF ✖","color":"red"}
title @a[tag=game.party.turtle_race.one_way.player.competitor,tag=!game.party.turtle_race.one_way.player.competitor.finished_race] title {"text":"> You didn't finish in time! <","color":"yellow"}
tp @a[tag=game.party.turtle_race.one_way.player.competitor,tag=!game.party.turtle_race.one_way.player.competitor.finished_race] @e[tag=turtle_race.one_way.marker.podium.losers,limit=1,sort=nearest]
