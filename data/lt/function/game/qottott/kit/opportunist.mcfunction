# Reset Attributes
function lt:game/qottott/kit/reset_attributes

# Kit Thesis (No Damage, No Knockback, Auto Step, Speed, Jump, Avg Health + Res)

# Chest (Color) F564E2
item replace entity @s armor.chest with minecraft:leather_chestplate[tooltip_display={hidden_components:["enchantments","unbreakable","trim","dyed_color"]},minecraft:enchantments={"minecraft:binding_curse":1},minecraft:unbreakable={},minecraft:custom_name='{"translate":"ltminigames.minigame.qottott.kit.opportunist","color":"#F564E2","italic":false}',minecraft:trim={material:"minecraft:amethyst",pattern:"minecraft:wayfinder"},minecraft:dyed_color=16082146] 1

# Weapon
item replace entity @s weapon.mainhand with minecraft:wooden_sword[tooltip_display={hidden_components:["enchantments","unbreakable","trim","dyed_color","attribute_modifiers"]},minecraft:attribute_modifiers=[{amount:1,operation:"add_value",slot:"mainhand",type:"attack_damage",id:"lt:qottott_kit"},{amount:-2.25d,operation:"add_value",slot:"mainhand",type:"attack_speed",id:"lt:qottott_kit"}],minecraft:enchantments={"minecraft:knockback":15},minecraft:unbreakable={},minecraft:custom_name='{"translate":"lt.game.qottott.class.opportunist.weapon_name","color":"#F564E2","italic":false}',minecraft:dyed_color=10511680] 1


# Effects
attribute @s attack_damage base set 0.001
attribute @s armor base set -15
attribute @s minecraft:knockback_resistance base set 0.935
attribute @s max_health base set 8
attribute @s movement_speed base set 0.125
attribute @s step_height base set 2
attribute @s minecraft:gravity base set 0.1
effect give @s jump_boost infinite 2 true

effect give @s instant_health 5 5 true
