# Set title
title @a[tag=game.party.turtle_race.standard.player] times 5 20 5
title @a[tag=game.party.turtle_race.standard.player] title [{"text": "◁ ","color": "gray"},{"text": "3","color": "#48885B"},{"text": " ▷","color": "gray"}]
title @a[tag=game.party.turtle_race.standard.player] subtitle [{"text": "> The Race Starts In <","color": "yellow"}]


# Schedule next
schedule function lt:game/party/race_standard/countdown/fp_2 1s

# Play sound
execute as @a[tag=game.party.turtle_race.standard.player] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 1