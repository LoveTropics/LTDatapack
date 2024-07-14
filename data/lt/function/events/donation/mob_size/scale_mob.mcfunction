data modify entity @s interpolation_duration set value 100
data modify entity @s start_interpolation set value 0
#Todo change this to use real donation amount 
execute as @s store result entity @s transformation.scale[0] float 0.00065 run scoreboard players get all donations.totals
execute as @s store result entity @s transformation.scale[1] float 0.00065 run scoreboard players get all donations.totals
execute as @s store result entity @s transformation.scale[2] float 0.00065 run scoreboard players get all donations.totals