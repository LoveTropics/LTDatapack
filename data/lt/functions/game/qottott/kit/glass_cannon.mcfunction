# Reset Attributes
function lt:game/qottott/kit/reset_attributes

# Kit Thesis (No knockback, High Knock Res, Low Health, Moderate Damage.

# forge:step_height forge:entity_gravity


# Chest (Color)
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"translate":"ltminigames.minigame.qottott.kit.glass_cannon","color":"dark_gray","italic":false}',color:65527},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Trim:{material:"minecraft:quartz",pattern:"minecraft:vex"}} 1

# Weapon (Knockback, Damage)
item replace entity @s weapon.mainhand with wooden_sword{display:{Name:'{"translate":"lt.game.qottott.class.glass_cannon.weapon_name","color":"red","italic":false}'},HideFlags:255,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-1771193999,-1390129351,-1219003945,197838923],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.25,Operation:0,UUID:[I;-1782035422,1629704147,-1777711428,-1163549348],Slot:"mainhand"}]} 1

# Attributes
attribute @s generic.attack_damage base set 0.001
attribute @s generic.max_health base set 1
attribute @s generic.knockback_resistance base set 0.93
attribute @s minecraft:generic.armor base set -15

effect give @s instant_health 5 5 true