tellraw @a[tag=main.operator] [{"text":"<@>","color":"gray"},{"text":" Confirm Total Reload. ","color":"yellow"},{"text":"| ","color":"dark_gray"},{"text":"[Confirm]","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Click to re-run all 'on_load' type functions.","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function lt:main/on_reload/reload_confirmed"}}]
execute as @a[tag=main.operator] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 2 1.5