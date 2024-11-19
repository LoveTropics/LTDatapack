# Resets to empty hand
execute as @s run data modify entity @s HandItems set value [{},{}]
execute as @s run data modify entity @s ArmorItems set value [{},{},{},{}]

# DinnerBeef - Debug
execute as @s if data entity @s {profile:{id:[I;-1485293637,-1100069853,-1638540787,-1475363801]}} run item replace entity @s armor.head with ltminigames:mob_hat[ltminigames:entity={type:"tropicraft:fiddler_crab"},ltminigames:size=2]

# Direwolf20
execute as @s if data entity @s {profile:[I;-1145537090,1762607621,-1111133441,-1192508771]} run item replace entity @s weapon with minecraft:cake

# Cojomax99
execute as @s if data entity @s {profile:{id:[I;-1505211345,-855292401,-2116995351,764383134]}} run item replace entity @s weapon with minecraft:cookie

# Ph1LzA
execute as @s if data entity @s {profile:{id:[I;-2074783607,-1378793039,-1569882079,654983408]}} run item replace entity @s weapon with tropicraft:exploding_coconut

# Tavinnea
execute as @s if data entity @s {profile:{id:[I;1029004137,1135038304,-2017228868,-433775056]}} run item replace entity @s weapon with minecraft:cake

# HelgaRakel
execute as @s if data entity @s {profile:{id:[I;1671137399,1213023590,-2113455186,2027551008]}} run item replace entity @s weapon with ltminigames:osa_point

# LogicPro
execute as @s if data entity @s {profile:{id:[I;-1023112197,1296125024,-2119703515,741123856]}} run item replace entity @s weapon with minecraft:cake

# MandaLin
execute as @s if data entity @s {profile:{id:[I;895672764,-1602335584,-1985475681,864027637]}} run item replace entity @s armor.head with ltminigames:mob_hat[ltminigames:entity={type:"minecraft:slime"},ltminigames:size=0.5]

# iskall85
execute as @s if data entity @s {profile:{id:[I;2127779963,-430553463,-1865021215,497744135]}} run item replace entity @s weapon with minecraft:cake

# slicedlime
execute as @s if data entity @s {profile:{id:[I;-1674917544,1575568808,-1935589086,-347337826]}} run item replace entity @s weapon with ltextras:sliced_lime

# millkberry
execute as @s if data entity @s {profile:{id:[I;1516136082,-1512355275,-1273681262,1206684784]}} run item replace entity @s weapon with minecraft:experience_bottle

# MacNcheeseP1z
execute as @s if data entity @s {profile:{id:[I;-870806706,-438285351,-1812630518,-977540790]}} run item replace entity @s weapon with minecraft:writable_book

# PearlescentMoon
execute as @s if data entity @s {profile:{id:[I;1976066990,-1148041107,-1860414717,206908384]}} run item replace entity @s weapon with minecraft:large_amethyst_bud

# Talon_MC
execute as @s if data entity @s {profile:{id:[I;42250248,-361936331,-1457856371,915838635]}} run item replace entity @s weapon with minecraft:diamond

# Pixlriffs
execute as @s if data entity @s {profile:{id:[I;1985151379,-516600059,-1885570566,683693240]}} run item replace entity @s weapon with minecraft:redstone_torch

# joehillssays
execute as @s if data entity @s {profile:{id:[I;1404757078,-608482257,-1938186610,-1033075838]}} run item replace entity @s weapon with tropicraft:large_bongo_drum

# Rushmead
execute as @s if data entity @s {profile:{id:[I;-510354127,1335312954,-2111215345,-696947940]}} run item replace entity @s weapon with minecraft:stone

# RichardThornton
execute as @s if data entity @s {profile:{id:[I;-1017164661,-961199337,-1545933079,568807566]}} run item replace entity @s weapon with minecraft:medium_amethyst_bud

# 8bitelliott
execute as @s if data entity @s {profile:{id:[I;1620193629,2030587671,-1824011384,290968943]}} run item replace entity @s weapon with minecraft:small_amethyst_bud

# Snifferish
execute as @s if data entity @s {profile:{id:[I;-1876181276,-1409793323,-1488194053,1010518261]}} run item replace entity @s weapon with minecraft:torchflower

# BadgerSpanner
execute as @s if data entity @s {profile:{id:[I;-679712667,-555859500,-1260001842,482594565]}} run item replace entity @s weapon with minecraft:cake

# Syszee
execute as @s if data entity @s {profile:{id:[I;-517872297,-1066122303,-1680966707,1174563393]}} run item replace entity @s weapon with minecraft:structure_block

# Knarfy
execute as @s if data entity @s {profile:{id:[I;1651221373,-2028256057,-1816515280,595105689]}} run item replace entity @s weapon with minecraft:command_block

# Bobicraft
execute as @s if data entity @s {profile:{id:[I;571400467,2001030148,-1746918587,-1943922051]}} run item replace entity @s weapon with tropicraft:music_disc_summering

# NotActuallyTerry
execute as @s if data entity @s {profile:{id:[I;1136400850,1419657815,-2082778962,-1695050563]}} run item replace entity @s weapon with minecraft:cake

# Anonymous
execute as @s if data entity @s {profile:{name:""}} run disguise as tropicraft:tapir {undercover:true}
execute as @s unless data entity @s {profile:{name:""}} run disguise clear


execute if entity @s[type=player] run tellraw @p {"text":"Execute","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=hostDummy] run function lt:utility/hosts/easter_eggs"}}
