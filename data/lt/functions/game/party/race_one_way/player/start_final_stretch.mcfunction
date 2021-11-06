tellraw @a[tag=game.party.turtle_race.one_way.player] [{"text":">>> ","color":"gray"},{"text":"Turtle Race ❯ Race Complete! Racing will close in 15 seconds ...","color":"yellow"}]
execute as @a[tag=game.party.turtle_race.one_way.player] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2 0.5
schedule function lt:game/party/race_one_way/player/end_final_stretch 15s
