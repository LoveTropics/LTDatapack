tag @s remove in.dropper_failing
tp @s @e[tag=dropper.fail,limit=1]
execute as @s at @s run playsound minecraft:block.note_block.banjo voice @s ~ ~ ~ 1 .01
scoreboard players add dropper.fail main.stats 1