setblock 2629 128 2746 minecraft:blue_concrete_powder
setblock 2670 128 2766 minecraft:blue_concrete_powder
setblock 2674 128 2713 minecraft:blue_concrete_powder
execute if block 2733 128 2635 minecraft:lime_concrete_powder run setblock 2733 128 2635 minecraft:white_concrete_powder
execute as @e[tag=hole06TextChange] at @s run data modify entity @s text set value '[{"translate":"color.minecraft.blue"}]'
execute as @e[tag=hole11TextChange] at @s run data modify entity @s text set value '[{"translate":"color.minecraft.blue"}]'
execute as @e[tag=hole13TextChange] at @s run data modify entity @s text set value '[{"translate":"color.minecraft.blue"}]'