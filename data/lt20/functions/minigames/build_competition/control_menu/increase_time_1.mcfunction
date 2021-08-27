execute unless score TimeRemaining BuildGlobal matches ..70800 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 2 0.8
execute if score TimeRemaining BuildGlobal matches ..70800 run scoreboard players add TimeRemaining BuildGlobal 1200
execute if score TimeRemaining BuildGlobal matches ..70800 run playsound minecraft:block.note_block.flute master @s
function lt20:minigames/build_competition/game_inactive_tick
function lt20:minigames/build_competition/control_menu/display_menu
