execute unless score TimeRemaining BuildGlobal matches 6000.. run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 2 0.8
execute if score TimeRemaining BuildGlobal matches 6000.. run scoreboard players remove TimeRemaining BuildGlobal 6000
execute if score TimeRemaining BuildGlobal matches 6000.. run playsound minecraft:block.note_block.flute master @s
function lt20:minigames/build_competition/game_inactive_tick
function lt20:minigames/build_competition/control_menu/display_menu
