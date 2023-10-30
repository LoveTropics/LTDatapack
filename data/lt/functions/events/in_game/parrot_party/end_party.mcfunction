execute as @e[tag=events.in_game.parrot_party.parrot] at @s run tp @s ~ ~-200 ~
execute as @e[tag=events.in_game.parrot_party.jukebox] at @s run setblock ~ ~ ~ air destroy
tellraw @a[distance=..25] {"translate":"lt.events.parrot_party.stopped"}
scoreboard players set Cooldown events.parrot_party 1
