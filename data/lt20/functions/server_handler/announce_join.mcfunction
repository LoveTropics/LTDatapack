tellraw @a[tag=joined] [{"selector":"@s","color":"blue"},{"text":" Has joined the server for the first time!.","color":"green"}]
title @s times 5 80 25
title @s title {"text":"Welcome!","color":"blue"}
title @s subtitle {"text":"To the Love Tropics charity server","color":"green"}
playsound minecraft:block.note_block.bell master @s
execute in tropicraft:tropics run tp @s -1218 72 2551
tag @s add joined
