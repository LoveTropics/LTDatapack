tellraw @a [{"text":">>> ","color":"gray"},{"text":"Thanks for playing Turtle Race!","color":"green"}]
execute as @a[tag=turtle_racer] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2
function lt20:minigames/turtle_race/cancel
