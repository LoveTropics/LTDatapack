scoreboard players set Cooldown events.mouse_party 1
scoreboard players add MouseParty main.stats 1
execute in tropicraft:tropics run worldeffect apply lt:mouse_party 60s
execute in tropicraft:tropics run tellraw @a[current_world=true] {"translate": "lt.events.world_effect.mouse_party"}
schedule function mouseparty:reset_cooldown 900s