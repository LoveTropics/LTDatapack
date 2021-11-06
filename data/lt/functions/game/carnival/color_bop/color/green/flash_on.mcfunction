# Debug
#tellraw @a "Red Hit Detection Zombie Activated"
# IF: incorrect color
execute unless score activeColor p.cb.global matches 4 run function lt:game/carnival/color_bop/failed_run

# IF: correct color
execute if score activeColor p.cb.global matches 4 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 2 1
execute if score activeColor p.cb.global matches 4 run particle minecraft:dust 0.33 1 0.33 1 ~ ~1.8 ~ 0.3 0.3 0.3 0.1 30
execute if score activeColor p.cb.global matches 4 run replaceitem entity @s armor.head lime_concrete
execute if score activeColor p.cb.global matches 4 run schedule function lt:game/carnival/color_bop/color/green/flash_off 5t
execute if score activeColor p.cb.global matches 4 run function lt:game/carnival/color_bop/advance_beat
