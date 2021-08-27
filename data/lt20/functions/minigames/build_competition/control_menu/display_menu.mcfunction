tellraw @s {"text":"\n\n\n\n\n\n\n\n\n-------------------------------\n","color":"dark_aqua"}

tellraw @s [{"text":"                 Time: ","color":"blue","bold":false},{"score":{"name":"MinutesRemaining","objective":"BuildGlobal"},"color":"white"},{"text":":","color":"gray"},{"text":"00","color":"white"}]

tellraw @s [{"text":"\n---------","color":"dark_aqua"},{"text":"   Adjustment:   ","color":"yellow"},{"text":"--------\n","color":"dark_aqua"}]

tellraw @p [{"text":"               "},{"text":"+1","color":"green","clickEvent":{"action":"run_command","value":"/function lt20:minigames/build_competition/control_menu/increase_time_1"}},{"text":" "},{"text":"+5","color":"green","clickEvent":{"action":"run_command","value":"/function lt20:minigames/build_competition/control_menu/increase_time_5"}},{"text":" | ","color":"gray"},{"text":"-1","color":"red","clickEvent":{"action":"run_command","value":"/function lt20:minigames/build_competition/control_menu/decrease_time_1"}},{"text":" "},{"text":"-5","color":"red","clickEvent":{"action":"run_command","value":"/function lt20:minigames/build_competition/control_menu/decrease_time_5"}}]

tellraw @s [{"text":"\n--------","color":"dark_aqua"},{"text":"   Select Theme:   ","color":"yellow"},{"text":"-------\n","color":"dark_aqua"}]

execute unless score Theme BuildGlobal matches 1 run tellraw @s [{"text":"[Select]","color":"blue","clickEvent":{"action":"run_command","value":"/function lt20:minigames/build_competition/control_menu/themes/set_theme_sand_castle"}},{"text":" | ","color":"gray"},{"text":"Sand Castle","color":"dark_gray"}]
execute unless score Theme BuildGlobal matches 2 run tellraw @s [{"text":"[Select]","color":"blue","clickEvent":{"action":"run_command","value":"/function lt20:minigames/build_competition/control_menu/themes/set_theme_under_da_sea"}},{"text":" | ","color":"gray"},{"text":"Under Da Sea","color":"dark_gray"}]
execute unless score Theme BuildGlobal matches 3 run tellraw @s [{"text":"[Select]","color":"blue","clickEvent":{"action":"run_command","value":"/function lt20:minigames/build_competition/control_menu/themes/set_theme_9x9"}},{"text":" | ","color":"gray"},{"text":"Dire 9 by 9's","color":"dark_gray"}]
execute unless score Theme BuildGlobal matches 4 run tellraw @s [{"text":"[Select]","color":"blue","clickEvent":{"action":"run_command","value":"/function lt20:minigames/build_competition/control_menu/themes/set_theme_tree_house"}},{"text":" | ","color":"gray"},{"text":"Tree House","color":"dark_gray"}]
execute unless score Theme BuildGlobal matches 6 run tellraw @s [{"text":"[Select]","color":"blue","clickEvent":{"action":"run_command","value":"/function lt20:minigames/build_competition/control_menu/themes/set_theme_tiki_bar"}},{"text":" | ","color":"gray"},{"text":"My Little Tiki Bar","color":"dark_gray"}]
execute unless score Theme BuildGlobal matches 7 run tellraw @s [{"text":"[Select]","color":"blue","clickEvent":{"action":"run_command","value":"/function lt20:minigames/build_competition/control_menu/themes/set_theme_submarine"}},{"text":" | ","color":"gray"},{"text":"Yel.... no not again, Submarine","color":"dark_gray"}]

execute if score Theme BuildGlobal matches 1 run tellraw @s [{"text":"\nSelected Theme: ","color":"blue"},{"text":"Sand Castle","color":"green"}]
execute if score Theme BuildGlobal matches 2 run tellraw @s [{"text":"\nSelected Theme: ","color":"blue"},{"text":"Under Da Sea","color":"green"}]
execute if score Theme BuildGlobal matches 3 run tellraw @s [{"text":"\nSelected Theme: ","color":"blue"},{"text":"Dire 9 by 9's","color":"green"}]
execute if score Theme BuildGlobal matches 4 run tellraw @s [{"text":"\nSelected Theme: ","color":"blue"},{"text":"Tree House","color":"green"}]
execute if score Theme BuildGlobal matches 6 run tellraw @s [{"text":"\nSelected Theme: ","color":"blue"},{"text":"My Little Tiki Bar","color":"green"}]
execute if score Theme BuildGlobal matches 7 run tellraw @s [{"text":"\nSelected Theme: ","color":"blue"},{"text":"Yel.... no not again, Submarine","color":"green"}]


tellraw @s {"text":"\n-------------------------------\n","color":"dark_aqua"}
