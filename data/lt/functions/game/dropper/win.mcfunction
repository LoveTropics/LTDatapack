tag @s remove in.dropper_failing
tp @s @e[tag=dropper.win,limit=1]
execute as @s at @s run playsound minecraft:event.raid.horn voice @s ~ ~ ~ 100 1.1
give @s[tag=!dropper.win.coins] ltextras:tropicoin 20
give @s[tag=dropper.win.coins] ltextras:tropicoin 1
tag @s add dropper.win.coins
scoreboard players add dropper.win main.stats 1
scoreboard players set @s dropper.counter 0
function lt:game/dropper/gravity/reset