tag @e[tag=dropper.fail] add running
execute as @e[tag=dropper.fail,limit=1] at @s run tag @a[distance=.2] add in.dropper_failing
title @a[tag=in.dropper] title {"text":"3","color":"dark_red"}
execute as @e[tag=dropper.fail,limit=1] at @s run playsound minecraft:block.note_block.bit voice @a[tag=in.dropper]
schedule function lt:game/dropper/timer/2 1s