# Reset Attributes
function lt:game/qottott/kit/reset_attributes

# Kit Thesis (High Knockback, High Speed, No Damage, Low Health)

# Chest (Color) FF7700
item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:custom_name='{"translate":"ltminigames.minigame.qottott.kit.brawler","color":"#FF7700","italic":false}',minecraft:trim={material:"minecraft:redstone",pattern:"minecraft:coast",show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:16742144,show_in_tooltip:0b}] 1

# Weapon (Knockback, Damage)
item replace entity @s weapon.mainhand with minecraft:stick[minecraft:enchantments={levels:{"minecraft:knockback":50},show_in_tooltip:0b},minecraft:custom_name='{"translate":"lt.game.qottott.class.brawler.weapon_name","color":"#FF7700","italic":false}',minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b}] 1


# Effects
attribute @s generic.attack_damage base set 0.001
attribute @s generic.armor base set -15
attribute @s generic.knockback_resistance base set 0.95
attribute @s generic.max_health base set 12
attribute @s generic.step_height base set 1
attribute @s generic.movement_speed base set 0.1175

effect give @s instant_health 5 5 true