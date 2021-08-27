tag @s add sigrun_player
tp @s @e[sort=random,limit=1,tag=SigRunStartViewMarker]
scoreboard players add TotalPlayers SignatureGlobal 1
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n----------------------------------------\n","color":"dark_aqua"}
tellraw @s [{"text":"Welcome!","color":"green","bold":true},{"text":" to Signature Run, your goal is collect 75 signatures before time runs out!","color":"white","bold":false}]
tellraw @s [{"text":"\n | ","color":"gray"},{"text":"Further instructions can be found in your booklet.","color":"green"},{"text":" | ","color":"gray"}]
tellraw @s {"text":"\n----------------------------------------","color":"dark_aqua"}
give @s written_book 1
effect give @s weakness 36000 80 true
effect give @s invisibility 36000 80 true
effect give @s saturation 36000 80 true
effect give @s resistance 36000 80 true
effect give @s jump_boost 360000 255 true
tag @s remove ready
