#Grant players collectibles
execute if score all donations.totals matches 5000.. as @a[current_world=true,tag=!collectibles.granted-one] run function lt:events/milestone/grant/five_gibnut
execute if score all donations.totals matches 10000.. as @a[current_world=true,tag=!collectibles.granted-two] run function lt:events/milestone/grant/two
execute if score all donations.totals matches 15000.. as @a[current_world=true,tag=!collectibles.granted-three] run function lt:events/milestone/grant/three
execute if score all donations.totals matches 20000.. as @a[current_world=true,tag=!collectibles.granted-four] run function lt:events/milestone/grant/four
execute if score all donations.totals matches 25000.. as @a[current_world=true,tag=!collectibles.granted-five] run function lt:events/milestone/grant/five

#Philza Online Unlock
execute in tropicraft:tropics as @a[current_world=true,tag=!collectibles.tranted-ph1zla] if entity 84555089-add1-49b1-a26d-8021270a40f0 run function lt:events/milestone/grant/philza

#Todo move this
execute as @a[tag=collectibles.admin] run function lt:events/milestone/util/update_from_score