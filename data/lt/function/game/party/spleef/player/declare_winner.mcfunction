tellraw @a[tag=game.party.spleef.player] [{"text":">>> ","color":"gray"},{"text":"Spleef ❯ All but one have fallen. The volcano continues to crumble.","color":"yellow"}]
tellraw @a[tag=game.party.spleef.player] [{"text":"[","color":"gray"},{"text":"★","color":"gold"},{"text":"]: ","color":"gray"},{"selector":"@s","color":"gray"},{"text":" has won Volcano Spleef!","color":"#77A12F"}]
execute as @a[tag=game.party.spleef.player] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 0.8

# change state
scoreboard players set state s.global 4

# run start_end_game function
schedule function lt:game/party/spleef/player/start_end_game 2s
