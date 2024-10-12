# Reset Attributes
function lt:game/qottott/kit/reset_attributes

# Kit Thesis (No knockback, High Knock Res, Low Health, Moderate Damage.

# forge:step_height minecraft:generic.gravity


# Chest (Color) 0AFFF7
item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:custom_name='{"translate":"ltminigames.minigame.qottott.kit.fighter","color":"#0AFFF7","italic":false}',minecraft:trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:65527,show_in_tooltip:0b}] 1

# Weapon (Knockback, Damage)
item replace entity @s weapon.mainhand with minecraft:stick[minecraft:attribute_modifiers={modifiers:[{amount:3,id:"lt:qottott_kit",operation:"add_value",slot:"mainhand",type:"generic.attack_damage"},{amount:-2.0d,name:"generic.attack_speed",operation:"add_value",slot:"mainhand",type:"generic.attack_speed",id:"lt:qottott_kit"}],show_in_tooltip:0b},minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:custom_name='{"translate":"lt.game.qottott.class.fighter.weapon_name","color":"#0AFFF7","italic":false}',minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b}] 1

# Attributes
attribute @s generic.attack_damage base set 0.001
attribute @s generic.max_health base set 5
attribute @s generic.knockback_resistance base set 0.92
attribute @s minecraft:generic.armor base set -15
attribute @s generic.movement_speed base set 0.097

effect give @s instant_health 5 5 true
