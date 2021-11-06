# Set title
title @a[tag=game.party.turtle_race.standard.player] times 5 20 5
title @a[tag=game.party.turtle_race.standard.player] title [{"text": "◁ ","color": "gray"},{"text": "4","color": "#307B6F"},{"text": " ▷","color": "gray"}]
title @a[tag=game.party.turtle_race.standard.player] subtitle [{"text": "> The Race Starts In <","color": "yellow"}]


# Schedule next
schedule function lt:game/party/race_standard/countdown/fp_3 1s

# Play sound
execute as @a[tag=game.party.turtle_race.standard.player] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 0.75