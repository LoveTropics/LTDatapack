tag @s remove in.dropper_failing
tp @s @e[tag=dropper.fail,limit=1,sort=random]
execute as @s at @s run playsound minecraft:block.note_block.banjo voice @s ~ ~ ~ 1 .01
scoreboard players add dropper.fail main.stats 1
scoreboard players add @s dropper.counter 1
execute as @a[tag=in.dropper] if score @s dropper.counter matches 10..19 run function lt:game/dropper/gravity/7
execute as @a[tag=in.dropper] if score @s dropper.counter matches 20..29 run function lt:game/dropper/gravity/6
execute as @a[tag=in.dropper] if score @s dropper.counter matches 30..39 run function lt:game/dropper/gravity/5
execute as @a[tag=in.dropper] if score @s dropper.counter matches 40..49 run function lt:game/dropper/gravity/4