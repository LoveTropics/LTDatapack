title @a[tag=in.dropper] title {"text":"1","color":"dark_red"}
execute as @e[tag=dropper.fail,limit=1] at @s run playsound minecraft:block.note_block.bit voice @a[tag=in.dropper]
schedule function lt:game/dropper/timer/drop 1s