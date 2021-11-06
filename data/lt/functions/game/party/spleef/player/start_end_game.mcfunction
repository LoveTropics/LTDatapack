tellraw @a[tag=game.party.spleef.player] [{"text":">>> ","color":"gray"},{"text":"Spleef ❯ The game will close in 10 seconds ...","color":"yellow"}]
execute as @a[tag=game.party.spleef.player] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2 0.5
schedule function lt:game/party/spleef/player/end_game 10s
