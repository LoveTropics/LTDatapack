execute as @a on vehicle if entity @e[type=ltextras:seat] on passengers if entity @s[type=minecraft:player] run scoreboard players add @s chair_sit_time 1
schedule function lt:main/on_second 1s replace

function lt:mini_disguises/on_second

function lt:gegy/on_tick