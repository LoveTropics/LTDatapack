# Keep 'p.cb.hit_detection' zombies invisible and Invincible
effect give @e[tag=p.cb.hit_detection] invisibility 5 5 true
effect give @e[tag=p.cb.hit_detection] resistance 5 200 true

# Detect when 'p.cb.hit_detection' zombies get punched during gameStage '2' = When player is repeating pattern
execute as @e[tag=p.cb.hit_detection,tag=p.cb.red,nbt={HurtTime:5s}] at @s if score gameState p.cb.global matches 2 run function lt:game/carnival/color_bop/color/red/flash_on
execute as @e[tag=p.cb.hit_detection,tag=p.cb.yellow,nbt={HurtTime:5s}] at @s if score gameState p.cb.global matches 2 run function lt:game/carnival/color_bop/color/yellow/flash_on
execute as @e[tag=p.cb.hit_detection,tag=p.cb.orange,nbt={HurtTime:5s}] at @s if score gameState p.cb.global matches 2 run function lt:game/carnival/color_bop/color/orange/flash_on

execute as @e[tag=p.cb.hit_detection,tag=p.cb.pink,nbt={HurtTime:5s}] at @s if score gameState p.cb.global matches 2 run function lt:game/carnival/color_bop/color/pink/flash_on
execute as @e[tag=p.cb.hit_detection,tag=p.cb.green,nbt={HurtTime:5s}] at @s if score gameState p.cb.global matches 2 run function lt:game/carnival/color_bop/color/green/flash_on
execute as @e[tag=p.cb.hit_detection,tag=p.cb.blue,nbt={HurtTime:5s}] at @s if score gameState p.cb.global matches 2 run function lt:game/carnival/color_bop/color/blue/flash_on
