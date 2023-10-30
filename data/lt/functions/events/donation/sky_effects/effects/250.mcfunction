execute in tropicraft:tropics run worldeffect apply lt:totem_world 30s
execute in tropicraft:tropics run tellraw @a[current_world=true] {"translate": "lt.events.world_effect.generic"}
scoreboard players set running donation.effects 1
scoreboard players remove 250 donation.effects 1
schedule function lt:events/donation/sky_effects/reset 31s


