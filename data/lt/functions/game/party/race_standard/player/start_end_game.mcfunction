tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":">>> ","color":"gray"},{"text":"Turtle Race ❯ The game will close in 10 seconds ...","color":"yellow"}]
execute as @a[tag=game.party.turtle_race.standard.player] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2 0.5
schedule function lt:game/party/race_standard/player/end_game 10s
