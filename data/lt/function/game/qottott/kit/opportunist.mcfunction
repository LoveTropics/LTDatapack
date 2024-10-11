# Reset Attributes
function lt:game/qottott/kit/reset_attributes

# Kit Thesis (No Damage, No Knockback, Auto Step, Speed, Jump, Avg Health + Res)

# Chest (Color) F564E2
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"translate":"ltminigames.minigame.qottott.kit.opportunist","color":"#F564E2","italic":false}',color:16082146},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Trim:{material:"minecraft:amethyst",pattern:"minecraft:wayfinder"}} 1

# Weapon
item replace entity @s weapon.mainhand with wooden_sword{display:{Name:'{"translate":"lt.game.qottott.class.opportunist.weapon_name","color":"#F564E2","italic":false}'},HideFlags:255,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;-1771193999,-1390129351,-1219003945,197838923],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.25,Operation:0,UUID:[I;-1782035422,1629704147,-1777711428,-1163549348],Slot:"mainhand"}],Enchantments:[{id:"minecraft:knockback",lvl:15s}]} 1


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
