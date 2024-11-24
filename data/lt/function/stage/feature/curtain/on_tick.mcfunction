# Stop curtain logic once it becomes fully open or closed
execute if score length stage.curtain = max_length stage.curtain if score state stage.curtain matches 1 run scoreboard players set state stage.curtain 0
execute if score length stage.curtain matches 0 if score state stage.curtain matches -1 run scoreboard players set state stage.curtain 0

# Run correct break/place function if state is not 0
execute if score state stage.curtain matches 1 run function lt:stage/feature/curtain/place_layer with storage lt:stage/curtain
execute if score state stage.curtain matches -1 run function lt:stage/feature/curtain/break_layer with storage lt:stage/curtain

# Evaluate new length
execute store result score length stage.curtain run data get storage lt:stage/curtain current_step 1

