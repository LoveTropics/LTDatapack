# Set title
title @a[tag=game.party.spleef.player] times 5 20 5
title @a[tag=game.party.spleef.player] title " "
title @a[tag=game.party.spleef.player] subtitle " "


# Update Game State
scoreboard players set state s.global 3

# Update bossbar
bossbar set lt:game.party.spleef.forced_progression_bar name [{"text":"Forced Progression in: ","color":"#ACC12F","bold":true},{"score":{"name":"s.time_to_fp","objective":"utility.math5"},"color":"white","bold":false}]

# Play sound
execute as @a[tag=game.party.spleef.player] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 1 1
execute as @a[tag=game.party.spleef.player] at @s run playsound minecraft:block.basalt.break master @s ~1 ~ ~1 2 1
execute as @a[tag=game.party.spleef.player] at @s run playsound minecraft:block.basalt.break master @s ~1 ~ ~-1 2 1
execute as @a[tag=game.party.spleef.player] at @s run playsound minecraft:block.basalt.break master @s ~-1 ~ ~1 2 1
execute as @a[tag=game.party.spleef.player] at @s run playsound minecraft:block.basalt.break master @s ~-1 ~ ~-1 2 1
execute as @a[tag=game.party.spleef.player] at @s run playsound minecraft:block.basalt.break master @s ~ ~ ~ 2 1
