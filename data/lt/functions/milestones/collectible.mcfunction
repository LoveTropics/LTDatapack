execute if score collectible stats <= Goal1 constants as @a[current_world=true,tag=!collectibles.granted-one] run function lt:milestones/grant/one
execute if score collectible stats <= Goal2 constants as @a[current_world=true,tag=!collectibles.granted-two] run function lt:milestones/grant/two
execute if score collectible stats <= Goal3 constants as @a[current_world=true,tag=!collectibles.granted-there] run function lt:milestones/grant/there
execute if score collectible stats <= Goal4 constants as @a[current_world=true,tag=!collectibles.granted-four] run function lt:milestones/grant/four
execute if score collectible stats <= Goal5 constants as @a[current_world=true,tag=!collectibles.granted-five] run function lt:milestones/grant/five