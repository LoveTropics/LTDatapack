execute as @e[tag=events.in_game.parrot_party.parrot] at @s run tp @s ~ ~-200 ~
execute as @e[tag=events.in_game.parrot_party.jukebox] at @s run setblock ~ ~ ~ air replace
execute as @e[tag=events.in_game.parrot_party.tracker] at @s run tellraw @a[distance=..25] {"translate":"lt.events.parrot_party.stopped"}
scoreboard players set Dance events.parrot_party 0
schedule function lt:events/in_game/parrot_party/set_air 10t
schedule function lt:events/in_game/parrot_party/reset_timer 60s

