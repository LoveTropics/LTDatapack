tellraw @a [{"text":">>> ","color":"gray"},{"text":"Turtle race has been cancelled because one or more players failed to mount their turtles in time.","color":"red"}]
execute as @a[tag=turtle_racer] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 2
function lt20:minigames/turtle_race/cancel
