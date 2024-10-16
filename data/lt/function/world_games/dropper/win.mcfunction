tp @s @e[tag=dropper.win,limit=1]
execute as @s at @s run playsound minecraft:event.raid.horn voice @s ~ ~ ~ 100 1.1
give @s[tag=!dropper.win.coins] ltextras:tropicoin 20
give @s[tag=dropper.win.coins] ltextras:tropicoin 1
tag @s add dropper.win.coins
scoreboard players add Success game.dropper.stats 1
function lt:world_games/dropper/util/update_display
# scoreboard players set @s dropper.counter 0
# function lt:game/dropper/gravity/reset