#Grant players collectibles
execute if score collectible main.stats matches 5000.. as @a[current_world=true,tag=!collectibles.granted-one] run function lt:milestones/grant/one
execute if score collectible main.stats matches 10000.. as @a[current_world=true,tag=!collectibles.granted-two] run function lt:milestones/grant/two
execute if score collectible main.stats matches 15000.. as @a[current_world=true,tag=!collectibles.granted-there] run function lt:milestones/grant/there
execute if score collectible main.stats matches 20000.. as @a[current_world=true,tag=!collectibles.granted-four] run function lt:milestones/grant/four
execute if score collectible main.stats matches 25000.. as @a[current_world=true,tag=!collectibles.granted-five] run function lt:milestones/grant/five

execute as @a[tag=collectibles.admin] run function lt:milestones/util/update_from_score