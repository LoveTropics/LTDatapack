tellraw @a[tag=game.party.turtle_race.one_way.player] [{"text":">>> ","color":"gray"},{"text":"Turtle Race ❯ The game will close in 10 seconds ...","color":"yellow"}]
execute as @a[tag=game.party.turtle_race.one_way.player] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2 0.5
schedule function lt:game/party/race_one_way/player/end_game 10s
