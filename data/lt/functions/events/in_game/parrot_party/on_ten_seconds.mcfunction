execute if score Cooldown events.parrot_party matches 1.. run return 1
scoreboard players set Players events.parrot_party 0
execute at @e[type=marker,tag=events.in_game.parrot_party.tracker] as @a[distance=..20,nbt={ForgeCaps:{"ltminigames:player_disguise":{entity:{type:"minecraft:parrot"}}}}] run scoreboard players add Players events.parrot_party 1
execute if score Players events.parrot_party >= Required events.parrot_party run function lt:events/in_game/parrot_party/start_party