tellraw @a[tag=game.party.turtle_race.one_way.player] [{"text":">>> ","color":"gray"},{"text":"Turtle Race ❯ Game closed.","color":"white"}]
execute at @e[tag=game.party.turtle_race.one_way.marker.world_finder,limit=1] run game finish
