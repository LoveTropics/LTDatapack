playsound minecraft:block.note_block.bit voice @a[tag=in.dropper]
execute as @e[tag=dropper.fail] at @s run fill 2579 127 2800 2577 126 2802 air destroy
execute as @e[tag=dropper.fail] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_button"}},distance=..5]
tag @e[tag=dropper.fail] remove running
schedule function lt:game/dropper/reset 3s
