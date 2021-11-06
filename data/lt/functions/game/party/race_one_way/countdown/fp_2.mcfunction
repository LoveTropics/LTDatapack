# Set title
title @a[tag=game.party.turtle_race.one_way.player] times 5 20 5
title @a[tag=game.party.turtle_race.one_way.player] title [{"text": "◁ ","color": "gray"},{"text": "2","color": "#5F9446"},{"text": " ▷","color": "gray"}]
title @a[tag=game.party.turtle_race.one_way.player] subtitle [{"text": "> The Race Starts In <","color": "yellow"}]


# Schedule next
schedule function lt:game/party/race_one_way/countdown/fp_1 1s

# Play sound
execute as @a[tag=game.party.turtle_race.one_way.player] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1.25