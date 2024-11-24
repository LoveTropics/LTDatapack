## Main on_tick function for simple stage mechanics
# More complex stage mechanics can have their own on_ticks, which should be ran from here instead of tick_runner



## Run curtain logic only when it is not fully open or closed.
execute unless score curtain_state stage.global matches 0 run execute as @e[type=marker,tag=stage.curtain] at @s run function lt:stage/feature/curtain/on_tick