# Reset Attributes
function lt:game/qottott/kit/reset_attributes

# Kit Thesis (No Damage, No Knockback, Auto Step, Speed, Jump, Avg Health + Res)

# Chest (Color) F564E2
item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:custom_name='{"translate":"ltminigames.minigame.qottott.kit.opportunist","color":"#F564E2","italic":false}',minecraft:trim={material:"minecraft:amethyst",pattern:"minecraft:wayfinder",show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:16082146,show_in_tooltip:0b}] 1

# Weapon
item replace entity @s weapon.mainhand with minecraft:wooden_sword[minecraft:attribute_modifiers={modifiers:[{amount:1,operation:"add_value",slot:"mainhand",type:"generic.attack_damage",id:"lt:qottott_kit"},{amount:-2.25d,operation:"add_value",slot:"mainhand",type:"generic.attack_speed",id:"lt:qottott_kit"}],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:knockback":15},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:custom_name='{"translate":"lt.game.qottott.class.opportunist.weapon_name","color":"#F564E2","italic":false}',minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b}] 1


# Effects
attribute @s generic.attack_damage base set 0.001
attribute @s generic.armor base set -15
attribute @s generic.knockback_resistance base set 0.935
attribute @s generic.max_health base set 8
attribute @s generic.movement_speed base set 0.125
attribute @s generic.step_height base set 2
attribute @s minecraft:generic.gravity base set 0.1
effect give @s jump_boost infinite 2 true

effect give @s instant_health 5 5 true
