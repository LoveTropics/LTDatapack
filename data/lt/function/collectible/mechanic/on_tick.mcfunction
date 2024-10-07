# Rocket Boots
# execute as @a[nbt={Inventory:[{Slot:100b,tag:{RocketBoots:1b}}]}] at @s run function lt:collectible/mechanic/rocket_boots/tick
# execute as @a[tag=collectible.rocket_boots.equipped] unless entity @s[nbt={Inventory:[{Slot:100b,tag:{RocketBoots:1b}}]}] run function lt:collectible/mechanic/rocket_boots/take_off