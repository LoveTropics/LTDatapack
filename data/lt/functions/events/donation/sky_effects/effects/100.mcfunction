execute in tropicraft:tropics run worldeffect apply lt:cherry_grove 30s
execute in tropicraft:tropics run tellraw @a[current_world=true] {"translate": "lt.events.world_effect.100"}
scoreboard players set running donation.effects 1
scoreboard players remove 100 donation.effects 1
schedule function lt:events/donation/sky_effects/reset 31s


