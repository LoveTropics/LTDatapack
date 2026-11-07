### TEAMS
# red
# blue
# hardcore_yellow
# hardcore_green
###

### TAGS
# ghost --> Mod applied.
# ghost.setup --> Mod applied.
###

### Setup ghosts
execute as @a[tag=ghost,tag=!ghost.setup] at @s run function lt:game/hardcore_havoc/setup_ghost


### Revert player position if they get too far away from their teammates.
execute as @a[team=red,tag=ghost.setup] at @s unless entity @a[team=red,tag=!ghost,distance=..75] run tp @s @p[team=red,tag=!ghost]
execute as @a[team=blue,tag=ghost.setup] at @s unless entity @a[team=blue,tag=!ghost,distance=..75] run tp @s @p[team=blue,tag=!ghost]
execute as @a[team=yellow,tag=ghost.setup] at @s unless entity @a[team=yellow,tag=!ghost,distance=..75] run tp @s @p[team=yellow,tag=!ghost]
execute as @a[team=green,tag=ghost.setup] at @s unless entity @a[team=green,tag=!ghost,distance=..75] run tp @s @p[team=green,tag=!ghost]

### Cleanup ghosts
execute as @a[tag=ghost,team=!red,team=!yellow,team=!green,team=!blue] at @s run function lt:game/hardcore_havoc/cleanup_ghost
