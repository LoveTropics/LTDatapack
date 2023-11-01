tp @s @e[tag=dropper.win,limit=1]
playsound minecraft:event.raid.horn voice @s ~ ~ ~ 100 1.1
give @s[tag=!dropper.win] ltextras:tropicoin 20
give @s[tag=dropper.win] ltextras:tropicoin 1
tag @s add dropper.win
scoreboard players add dropper.win main.stats 1