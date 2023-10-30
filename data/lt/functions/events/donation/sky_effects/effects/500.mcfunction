execute in tropicraft:tropics run worldeffect apply lt:love_world 60s
execute in tropicraft:tropics run tellraw @a[current_world=true] {"translate": "lt.events.world_effect.generic"}
scoreboard players set running donation.effects 1
scoreboard players remove 500 donation.effects 1
schedule function lt:events/donation/sky_effects/reset 61s