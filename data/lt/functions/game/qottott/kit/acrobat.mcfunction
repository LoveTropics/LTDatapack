# Reset Attributes
function lt:game/qottott/kit/reset_attributes

# Kit Thesis (No Damage, No Knockback, Auto Step, Speed, Jump, Avg Health + Res)

# Chest (Color)
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"translate":"ltminigames.minigame.qottott.kit.acrobat","color":"light_purple","italic":false}',color:16082146},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Trim:{material:"minecraft:amethyst",pattern:"minecraft:wayfinder"}} 1

# Effects
attribute @s generic.attack_damage base set 0
attribute @s generic.armor base set -15
attribute @s generic.knockback_resistance base set 0.95
attribute @s generic.max_health base set 12
attribute @s generic.movement_speed base set 0.124
attribute @s forge:step_height base set 2
attribute @s forge:entity_gravity base set 0.1
effect give @s jump_boost infinite 2 true

effect give @s instant_health 5 5 true