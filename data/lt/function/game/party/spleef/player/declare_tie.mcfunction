tellraw @a[tag=game.party.spleef.player] [{"text":">>> ","color":"gray"},{"text":"Spleef ❯ All who fought have fallen. The volcano continues to crumble. No one wins today.","color":"yellow"}]
scoreboard players set alive_competitors s.global -1
execute as @a[tag=game.party.spleef.player] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 100 0.75

# change state
scoreboard players set state s.global 4

# run start_end_game function
schedule function lt:game/party/spleef/player/start_end_game 2s
