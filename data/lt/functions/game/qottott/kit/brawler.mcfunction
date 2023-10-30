# Reset Attributes
function lt:game/qottott/kit/reset_attributes

# Kit Thesis (High Knockback, High Speed, No Damage, Low Health)

# Chest (Color)
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"translate":"lt.game.qottott.class.assassin.name","color":"dark_red","italic":false}',color:8390150},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Trim:{material:"minecraft:netherite",pattern:"minecraft:wild"}} 1

# Weapon (Knockback, Damage)
item replace entity @s weapon.mainhand with stick{display:{Name:'{"translate":"lt.game.qottott.class.assassin.weapon_name","color":"dark_red","italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:45s}]} 1


# Effects
attribute @s generic.attack_damage base set 0.001
attribute @s generic.armor base set -15
attribute @s generic.knockback_resistance base set 0.95
attribute @s generic.max_health base set 12
attribute @s generic.movement_speed base set 0.1175

effect give @s instant_health 5 5 true