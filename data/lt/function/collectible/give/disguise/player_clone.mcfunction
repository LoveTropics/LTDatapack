tellraw @s {"text":"Use cloning for player disguise [Click to tp]","color":"red","bold":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/tp @s @e[tag=disguises.player.cloner,limit=1]"}}
collectible give @s lt:disguise/player_clone
