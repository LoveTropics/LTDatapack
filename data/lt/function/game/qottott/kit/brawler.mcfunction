# Reset Attributes
function lt:game/qottott/kit/reset_attributes

# Kit Thesis (High Knockback, High Speed, No Damage, Low Health)

# Chest (Color) FF7700
item replace entity @s armor.chest with minecraft:leather_chestplate[tooltip_display={hidden_components:["minecraft:dyed_color", "minecraft:enchantments", "minecraft:unbreakable", "minecraft:trim"]},minecraft:enchantments={"minecraft:binding_curse":1},minecraft:unbreakable={},minecraft:custom_name={"translate":"ltminigames.minigame.qottott.kit.brawler","color":"#FF7700","italic":false},minecraft:trim={material:"minecraft:redstone",pattern:"minecraft:coast"},minecraft:dyed_color=16742144] 1

# Weapon (Knockback, Damage)
item replace entity @s weapon.mainhand with minecraft:stick[tooltip_display={hidden_components:["minecraft:dyed_color", "minecraft:enchantments", "minecraft:unbreakable", "minecraft:trim"]},minecraft:enchantments={"minecraft:knockback":50},minecraft:custom_name={"translate":"lt.game.qottott.class.brawler.weapon_name","color":"#FF7700","italic":false},minecraft:dyed_color=10511680] 1


# Effects
attribute @s attack_damage base set 0.001
attribute @s armor base set -15
attribute @s minecraft:knockback_resistance base set 0.95
attribute @s max_health base set 12
attribute @s step_height base set 1
attribute @s movement_speed base set 0.1175

effect give @s instant_health 5 5 true
