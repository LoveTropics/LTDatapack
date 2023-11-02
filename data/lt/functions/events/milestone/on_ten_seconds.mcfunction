#Grant players collectibles
execute if score all donations.totals matches 5000.. as @a[current_world=true,tag=!collectibles.granted-one] run function lt:events/milestone/grant/five_gibnut
execute if score all donations.totals matches 10000.. as @a[current_world=true,tag=!collectibles.granted-two] run function lt:events/milestone/grant/ten_tropicreeper
execute if score all donations.totals matches 15000.. as @a[current_world=true,tag=!collectibles.granted-three] run function lt:events/milestone/grant/fifteen_spider_monkey
execute if score all donations.totals matches 20000.. as @a[current_world=true,tag=!collectibles.granted-four] run function lt:events/milestone/grant/twenty_turtle
execute if score all donations.totals matches 25000.. as @a[current_world=true,tag=!collectibles.granted-five] run function lt:events/milestone/grant/twenty-five_col_cojo

#Philza Online Unlock 
execute as 84555089-add1-49b1-a26d-8021270a40f0 at @s if dimension tropicraft:tropics run execute as @a[current_world=true,tag=!collectibles.tranted-ph1zla] run function lt:events/milestone/grant/philza
