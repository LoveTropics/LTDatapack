# Reset Attributes
function lt:game/qottott/kit/reset_attributes

# Kit Thesis (No knockback, High Knock Res, Low Health, Moderate Damage.

# forge:step_height minecraft:gravity


# Chest (Color) 0AFFF7
item replace entity @s armor.chest with minecraft:leather_chestplate[tooltip_display={hidden_components:["enchantments","unbreakable","trim","dyed_color"]},minecraft:enchantments={"minecraft:binding_curse":1},minecraft:unbreakable={},minecraft:custom_name={"translate":"ltminigames.minigame.qottott.kit.fighter","color":"#0AFFF7","italic":false},minecraft:trim={material:"minecraft:quartz",pattern:"minecraft:vex"},minecraft:dyed_color=65527] 1
# Weapon (Knockback, Damage)
item replace entity @s weapon.mainhand with minecraft:wooden_axe[tooltip_display={hidden_components:["enchantments","unbreakable","trim","dyed_color","attribute_modifiers"]},minecraft:attribute_modifiers=[{amount:3,id:"lt:qottott_kit",operation:"add_value",slot:"mainhand",type:"attack_damage"},{amount:-2.0d,name:"attack_speed",operation:"add_value",slot:"mainhand",type:"attack_speed",id:"lt:qottott_kit"}],enchantment_glint_override=true,minecraft:unbreakable={},minecraft:custom_name={"translate":"lt.game.qottott.class.fighter.weapon_name","color":"#0AFFF7","italic":false},minecraft:dyed_color=10511680] 1

# Attributes
attribute @s attack_damage base set 0.001
attribute @s max_health base set 5
attribute @s minecraft:knockback_resistance base set 0.92
attribute @s minecraft:armor base set -15
attribute @s movement_speed base set 0.097

effect give @s instant_health 5 5 true
