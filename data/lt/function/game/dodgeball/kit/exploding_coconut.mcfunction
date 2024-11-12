function lt:game/qottott/kit/reset_attributes

# Weapon (Knockback, Damage)
item replace entity @s weapon.mainhand with tropicraft:exploding_coconut[tropicraft:destroys_blocks=false,tropicraft:explosion_radius=2,ltextras:cooldown_override=50] 64

# Effects

attribute @s generic.attack_damage base set 0.001
attribute @s generic.armor base set -15
attribute @s generic.knockback_resistance base set 0.95
attribute @s generic.step_height base set 1
attribute @s generic.movement_speed base set 0.1175
attribute @s generic.max_health base set 1