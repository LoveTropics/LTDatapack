# Set title
title @a[tag=game.party.turtle_race.one_way.player] times 5 20 5
title @a[tag=game.party.turtle_race.one_way.player] title [{"text": "◁ ","color": "gray"},{"text": "5","color": "#176D85"},{"text": " ▷","color": "gray"}]
title @a[tag=game.party.turtle_race.one_way.player] subtitle [{"text": "> The Race Starts In <","color": "yellow"}]


# Schedule next
schedule function lt:game/party/race_one_way/countdown/fp_4 1s

# Play sound
execute as @a[tag=game.party.turtle_race.one_way.player] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 0.5

# Update state
scoreboard players set state r.o.global 2