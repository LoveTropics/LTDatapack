disguise as minecraft:zombie {IsBaby:1b}
item replace entity @s armor.head with golden_helmet[enchantments={levels:{binding_curse:1}},custom_data={mini_disguises_clear:1b}]
item replace entity @s armor.chest with golden_chestplate[enchantments={levels:{binding_curse:1}},custom_data={mini_disguises_clear:1b}]
item replace entity @s armor.legs with golden_leggings[enchantments={levels:{binding_curse:1}},custom_data={mini_disguises_clear:1b}]
item replace entity @s armor.feet with golden_boots[enchantments={levels:{binding_curse:1}},custom_data={mini_disguises_clear:1b}]
effect give @s minecraft:speed 60 10 true
scoreboard players set @s mini_disguises.clock 60
advancement revoke @s only lt:mini_disguises/philza
playsound minecraft:entity.zombie.ambient ambient @s ~ ~ ~ 2 1 1
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.15 1 0.15 0 50
collectible give @s lt:mini_disguise/clear