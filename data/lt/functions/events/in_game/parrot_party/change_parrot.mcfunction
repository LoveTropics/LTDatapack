execute if score Parrot events.parrot_party matches 5.. run scoreboard players set Parrot events.parrot_party -1
scoreboard players add Parrot events.parrot_party 1
execute store result storage lt:parrot_party Variant int 1 run scoreboard players get Parrot events.parrot_party
execute as @e[type=marker,tag=events.in_game.parrot_party.tracker] at @s as @e[tag=events.in_game.parrot_party.parrot,sort=random,limit=1] run data modify entity @s Variant set from storage lt:parrot_party Variant
execute if score Dance events.parrot_party matches 0.. run return 1
schedule function lt:events/in_game/parrot_party/change_parrot 1s