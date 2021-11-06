# Debug
#tellraw @a "Red Hit Detection Zombie Activated"
# IF: incorrect color
execute unless score activeColor p.cb.global matches 3 run function lt:game/carnival/color_bop/failed_run

# IF: correct color
execute if score activeColor p.cb.global matches 3 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1
execute if score activeColor p.cb.global matches 3 run particle minecraft:dust 0.89 0.43 0.87 1 ~ ~1.8 ~ 0.3 0.3 0.3 0.1 30
execute if score activeColor p.cb.global matches 3 run replaceitem entity @s armor.head pink_concrete
execute if score activeColor p.cb.global matches 3 run schedule function lt:game/carnival/color_bop/color/pink/flash_off 5t
execute if score activeColor p.cb.global matches 3 run function lt:game/carnival/color_bop/advance_beat
