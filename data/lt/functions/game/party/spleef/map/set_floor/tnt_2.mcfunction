## Replaces the placeholder floors with the correct material up to the number of total floors defined in lt:game/party/spleef/version/VERSION/settings
execute as @e[tag=game.party.spleef.marker.world_finder,limit=1] at @s if score SETTING.TOTAL_FLOORS s.global matches 1.. run fill 4 188 97 34 188 127 tnt replace white_stained_glass

execute as @e[tag=game.party.spleef.marker.world_finder,limit=1] at @s if score SETTING.TOTAL_FLOORS s.global matches 2.. run fill 4 181 97 34 181 127 tnt replace white_stained_glass

execute as @e[tag=game.party.spleef.marker.world_finder,limit=1] at @s if score SETTING.TOTAL_FLOORS s.global matches 3.. run fill 4 174 97 34 174 127 tnt replace white_stained_glass

execute as @e[tag=game.party.spleef.marker.world_finder,limit=1] at @s if score SETTING.TOTAL_FLOORS s.global matches 4.. run fill 4 167 97 34 167 127 tnt replace white_stained_glass

execute as @e[tag=game.party.spleef.marker.world_finder,limit=1] at @s if score SETTING.TOTAL_FLOORS s.global matches 5 run fill 4 160 97 34 160 127 tnt replace white_stained_glass


# Clear floors of remaining white glass (In case the map features more possible floors then defined for a games settings.)
execute as @e[tag=game.party.spleef.marker.world_finder,limit=1] at @s run fill 4 188 97 34 188 127 air replace white_stained_glass

execute as @e[tag=game.party.spleef.marker.world_finder,limit=1] at @s run fill 4 181 97 34 181 127 air replace white_stained_glass

execute as @e[tag=game.party.spleef.marker.world_finder,limit=1] at @s run fill 4 174 97 34 174 127 air replace white_stained_glass

execute as @e[tag=game.party.spleef.marker.world_finder,limit=1] at @s run fill 4 167 97 34 167 127 air replace white_stained_glass

execute as @e[tag=game.party.spleef.marker.world_finder,limit=1] at @s run fill 4 160 97 34 160 127 air replace white_stained_glass
