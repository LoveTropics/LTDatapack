tag @e[tag=dropper.fail] add running
title @a[tag=in.dropper] title {"text":"3","color":"dark_red"}
execute as @e[tag=dropper.fail,limit=1] at @s run playsound minecraft:block.note_block.bit voice @a[tag=in.dropper]
schedule function lt:game/dropper/timer/2 1s
execute as @a[tag=in.dropper] if score @s dropper.counter matches 10..19 run function lt:game/dropper/gravity/7
execute as @a[tag=in.dropper] if score @s dropper.counter matches 20..29 run function lt:game/dropper/gravity/6
execute as @a[tag=in.dropper] if score @s dropper.counter matches 30..39 run function lt:game/dropper/gravity/5
execute as @a[tag=in.dropper] if score @s dropper.counter matches 40..49 run function lt:game/dropper/gravity/4
