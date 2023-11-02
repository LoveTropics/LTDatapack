# Reset Attributes
function lt:game/qottott/kit/reset_attributes

# Kit Thesis (No knockback, High Knock Res, Low Health, Moderate Damage.

# forge:step_height forge:entity_gravity


# Chest (Color) 0AFFF7
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"translate":"ltminigames.minigame.qottott.kit.fighter","color":"#0AFFF7","italic":false}',color:65527},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Trim:{material:"minecraft:quartz",pattern:"minecraft:vex"}} 1

# Weapon (Knockback, Damage)
item replace entity @s weapon.mainhand with wooden_axe{display:{Name:'{"translate":"lt.game.qottott.class.fighter.weapon_name","color":"#0AFFF7","italic":false}'},HideFlags:255,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-1771193999,-1390129351,-1219003945,197838923],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.0,Operation:0,UUID:[I;-1782035422,1629704147,-1777711428,-1163549348],Slot:"mainhand"}]} 1

# Attributes
attribute @s generic.attack_damage base set 0.001
attribute @s generic.max_health base set 5
attribute @s generic.knockback_resistance base set 0.92
attribute @s minecraft:generic.armor base set -15
attribute @s generic.movement_speed base set 0.097

effect give @s instant_health 5 5 true