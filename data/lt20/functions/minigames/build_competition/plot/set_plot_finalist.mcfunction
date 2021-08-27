kill @e[type=item,distance=..4]
data merge entity @e[tag=build_competition_plot_label,distance=..3,limit=1,sort=nearest] {CustomName:'[{"text":"\'s ","color":"green"},{"text":"Build is a Finalist!","color":"gold"}]'}
tag @s add finalist
tag @s add finalist_made
execute as @e[tag=build_competition_plot_label,distance=..3,limit=1,sort=nearest] at @s unless entity @e[tag=build_competition_plot_label,team=BuildFinalist1] run team join BuildFinalist1
execute as @e[tag=build_competition_plot_label,distance=..3,limit=1,sort=nearest] at @s if entity @e[tag=build_competition_plot_label,team=BuildFinalist1] unless entity @e[tag=build_competition_plot_label,team=BuildFinalist3] run team join BuildFinalist2
execute as @e[tag=build_competition_plot_label,distance=..3,limit=1,sort=nearest] at @s if entity @e[tag=build_competition_plot_label,team=BuildFinalist1] if entity @e[tag=build_competition_plot_label,team=BuildFinalist3] run team join BuildFinalist3
execute as @a[tag=build_competition_builder] at @s if score @s PlayerPlotID = @e[tag=finalist_made,limit=1] MarkerPlotID run tag @s add finalist_made
execute if entity @e[tag=build_competition_plot_label,team=BuildFinalist1,distance=..3,limit=1,sort=nearest] run team modify BuildFinalist1 prefix {"selector":"@a[limit=1,tag=finalist_made]","color":"green"}
execute if entity @e[tag=build_competition_plot_label,team=BuildFinalist2,distance=..3,limit=1,sort=nearest] run team modify BuildFinalist2 prefix {"selector":"@a[limit=1,tag=finalist_made]","color":"green"}
execute if entity @e[tag=build_competition_plot_label,team=BuildFinalist3,distance=..3,limit=1,sort=nearest] run team modify BuildFinalist3 prefix {"selector":"@a[limit=1,tag=finalist_made]","color":"green"}
execute as @s at @s if entity @e[team=BuildFinalist1,distance=..3] run team join BuildFinalist1
execute as @s at @s if entity @e[team=BuildFinalist2,distance=..3] run team join BuildFinalist2
execute as @s at @s if entity @e[team=BuildFinalist3,distance=..3] run team join BuildFinalist3
