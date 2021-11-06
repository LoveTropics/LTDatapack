# Debug
#tellraw @a "Red Hit Detection Zombie Activated"
# IF: incorrect color
execute unless score activeColor p.cb.global matches 5 run function lt:game/carnival/color_bop/failed_run

# IF: correct color
execute if score activeColor p.cb.global matches 5 run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 2 1
execute if score activeColor p.cb.global matches 5 run particle minecraft:dust 0.33 1 1 1 ~ ~1.8 ~ 0.3 0.3 0.3 0.1 30
execute if score activeColor p.cb.global matches 5 run replaceitem entity @s armor.head light_blue_concrete
execute if score activeColor p.cb.global matches 5 run schedule function lt:game/carnival/color_bop/color/blue/flash_off 5t
execute if score activeColor p.cb.global matches 5 run function lt:game/carnival/color_bop/advance_beat
