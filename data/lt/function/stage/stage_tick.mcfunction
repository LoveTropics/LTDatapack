## Main on_tick function for simple stage mechanics
# More complex stage mechanics can have their own on_ticks, which should be ran from here instead of tick_runner
execute as @e[type=minecraft:marker,tag=utility.stage.curtain,tag=!utility.stage.curtain.setup] at @s run function lt:stage/curtain/dialog
