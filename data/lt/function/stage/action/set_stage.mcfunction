$scoreboard players set scene stage.global $(action_data)

## Set stage storage/river
execute in tropicraft:tropics if score scene stage.global matches 1 run clone -165 119 -217 -133 132 -204 -165 133 -217

## Set stage sky
execute in tropicraft:tropics if score scene stage.global matches 2 run clone -165 77 -217 -133 90 -204 -165 133 -217


## Set stage Evil base
execute in tropicraft:tropics if score scene stage.global matches 3 run clone -165 105 -217 -133 118 -204 -165 133 -217


## Set stage good base
execute in tropicraft:tropics if score scene stage.global matches 4 run clone -165 91 -217 -133 104 -204 -165 133 -217
