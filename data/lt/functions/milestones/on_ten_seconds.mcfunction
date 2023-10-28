#Grant players collectibles
execute if score all donations.totals matches 5000.. as @a[current_world=true,tag=!collectibles.granted-one] run function lt:milestones/grant/one
execute if score all donations.totals matches 10000.. as @a[current_world=true,tag=!collectibles.granted-two] run function lt:milestones/grant/two
execute if score all donations.totals matches 15000.. as @a[current_world=true,tag=!collectibles.granted-three] run function lt:milestones/grant/three
execute if score all donations.totals matches 20000.. as @a[current_world=true,tag=!collectibles.granted-four] run function lt:milestones/grant/four
execute if score all donations.totals matches 25000.. as @a[current_world=true,tag=!collectibles.granted-five] run function lt:milestones/grant/five

#Philza Online Unlock
execute in tropicraft:tropics as @a[current_world=true,tag=!collectibles.tranted-ph1zla] if entity 84555089-add1-49b1-a26d-8021270a40f0 run function lt:milestones/grant/philza

execute as @a[tag=collectibles.admin] run function lt:milestones/util/update_from_score