tellraw @a[tag=game.party.spleef.player] [{"text":">>> ","color":"gray"},{"text":"Spleef ❯ Game closed.","color":"white"}]
execute at @e[tag=game.party.spleef.marker.world_finder,limit=1] run game finish
