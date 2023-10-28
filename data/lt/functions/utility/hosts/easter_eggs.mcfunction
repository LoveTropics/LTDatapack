#DinnerBeef - Debug
execute as @s if data entity @s {ProfileID: [I;-1485293637,-1100069853,-1638540787,-1475363801]} run data modify entity @s HandItems set value [{id:"create:clipboard",Count:1b},{}]
#Direwolf20
execute as @s if data entity @s {ProfileID: [I;-1145537090,1762607621,-1111133441,-1192508771]} run data modify entity @s HandItems set value [{id:"create:wrench",Count:1b},{}]
#Cojomax99
execute as @s if data entity @s {ProfileID: [I;-1505211345,-855292401,-2116995351,764383134]} run data modify entity @s HandItems set value [{id:"minecraft:cookie",Count:1b},{}]
#Ph1LzA
execute as @s if data entity @s {ProfileID: [I;-2074783607,-1378793039,-1569882079,654983408]} run data modify entity @s HandItems set value [{id:"tropicraft:exploding_coconut",Count:1b},{}]
#Tavinnea
execute as @s if data entity @s {ProfileID: [I;1029004137,1135038304,-2017228868,-433775056]} run data modify entity @s HandItems set value [{id:"create:builders_tea",Count:1b},{}]
#HelgaRakel
execute as @s if data entity @s {ProfileID: [I;1671137399,1213023590,-2113455186,2027551008]} run data modify entity @s HandItems set value [{id:"ltminigames:osa_point",Count:1b},{}]
#LogicPro
execute as @s if data entity @s {ProfileID: [I;-1023112197,1296125024,-2119703515,741123856]} run data modify entity @s HandItems set value [{id:"create:brass_hand",Count:1b},{}]
#MandaLin
execute as @s if data entity @s {ProfileID: [I;895672764,-1602335584,-1985475681,864027637]} run data modify entity @s HandItems set value [{id:"create:sweet_roll",Count:1b},{}]
#iskall85
execute as @s if data entity @s {ProfileID: [I;2127779963,-430553463,-1865021215,497744135]} run data modify entity @s HandItems set value [{id:"create:goggles",Count:1b},{}]
#slicedlime
execute as @s if data entity @s {ProfileID: [I;-1674917544,1575568808,-1935589086,-347337826]} run data modify entity @s HandItems set value [{id:"ltextras:sliced_lime",Count:1b},{}]
#millkberry
execute as @s if data entity @s {ProfileID: [I;1516136082,-1512355275,-1273681262,1206684784]} run data modify entity @s HandItems set value [{id:"minecraft:experience_bottle",Count:1b},{}]
#MacNcheeseP1z
execute as @s if data entity @s {ProfileID: [I;-870806706,-438285351,-1812630518,-977540790]} run data modify entity @s HandItems set value [{id:"minecraft:writable_book",Count:1b},{}]
#PearlescentMoon
execute as @s if data entity @s {ProfileID: [I;1976066990,-1148041107,-1860414717,206908384]} run data modify entity @s HandItems set value [{id:"minecraft:large_amethyst_bud",Count:1b},{}]
#Talon_MC
execute as @s if data entity @s {ProfileID: [I;42250248,-361936331,-1457856371,915838635]} run data modify entity @s HandItems set value [{id:"minecraft:diamond",Count:1b},{}]
#Pixlriffs
execute as @s if data entity @s {ProfileID: [I;1985151379,-516600059,-1885570566,683693240]} run data modify entity @s HandItems set value [{id:"minecraft:redstone_torch",Count:1b},{}]
#joehillssays
execute as @s if data entity @s {ProfileID: [I;1404757078,-608482257,-1938186610,-1033075838]} run data modify entity @s HandItems set value [{id:"tropicraft:large_bongo_drum",Count:1b},{}]

execute if entity @s[type=player] run tellraw @p {"text":"Execute","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=hostDummy] run function lt:utility/hosts/easter_eggs"}}