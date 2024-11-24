$scoreboard players set backdrop stage.global $(action_data)

execute if score backdrop stage.global matches 0 run fill -165 135 -204 -133 146 -204 ltextras:curtain
execute if score backdrop stage.global matches 1 run clone -165 135 -189 -133 146 -189 -165 135 -204
execute if score backdrop stage.global matches 2 run clone -165 135 -184 -133 146 -184 -165 135 -204
execute if score backdrop stage.global matches 3 run clone -165 135 -179 -133 146 -179 -165 135 -204
execute if score backdrop stage.global matches 4 run clone -165 135 -174 -133 146 -174 -165 135 -204