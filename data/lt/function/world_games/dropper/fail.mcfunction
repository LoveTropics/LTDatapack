tp @s @e[tag=dropper.fail,limit=1,sort=random]
execute as @s at @s run playsound minecraft:block.note_block.banjo voice @s ~ ~ ~ 1 .01
scoreboard players add Fails game.dropper.stats 1
function lt:world_games/dropper/util/update_display
# scoreboard players add @s dropper.counter 1