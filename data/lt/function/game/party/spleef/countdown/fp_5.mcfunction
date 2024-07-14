# Set title
title @a[tag=game.party.spleef.player] times 5 20 5
title @a[tag=game.party.spleef.player] title [{"text": "◁ ","color": "gray"},{"text": "5","color": "#176D85"},{"text": " ▷","color": "gray"}]
title @a[tag=game.party.spleef.player] subtitle [{"text": "> Spleef In <","color": "yellow"}]


# Schedule next
schedule function lt:game/party/spleef/countdown/fp_4 1s

# Play sound
execute as @a[tag=game.party.spleef.player] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 0.5
