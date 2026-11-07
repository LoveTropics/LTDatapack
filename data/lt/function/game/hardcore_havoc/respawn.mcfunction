function lt:game/hardcore_havoc/cleanup_ghost
game setrole @s participant
gamemode survival @s
effect give @s minecraft:resistance 10 5 true
execute as @s[team=red] at @s run tp @s @p[team=red,tag=!ghost,distance=5..]
execute as @s[team=blue] at @s run tp @s @p[team=blue,tag=!ghost,distance=5..]
execute as @s[team=yellow] at @s run tp @s @p[team=yellow,tag=!ghost,distance=5..]
execute as @s[team=green] at @s run tp @s @p[team=green,tag=!ghost,distance=5..]
 