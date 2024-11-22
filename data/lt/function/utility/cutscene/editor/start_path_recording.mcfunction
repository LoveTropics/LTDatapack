## 
# Expects {path_id:""} argument. path_id should be lower_snake_case
## 

## Gets the players cutscene stage value from a scoreboard for use in running function macros
# /execute store result gamedata lt:ct @p stage int 1 run scoreboard players get @s cutscene.stage