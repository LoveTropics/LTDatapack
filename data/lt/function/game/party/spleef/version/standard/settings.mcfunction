# Type of floor material to use.
# RANGE = {1 = obsidian, 2 = tnt}
scoreboard players set SETTING.FLOOR_MATERIAL s.global 1

# Number of floors.
# RANGE = { 1 ... 5}
scoreboard players set SETTING.TOTAL_FLOORS s.global 5

## Floor bounds (Define only used floors ... See Above)
# EXAMPLE USAGE - where '$' = 'floor number'
# 'scoreboard players set SETTING.FLOOR$Y_UPPER s.global INT'
# 'scoreboard players set SETTING.FLOOR$Y_LOWER s.global INT'

### Definitions {

# FLOOR 1
scoreboard players set SETTING.FLOOR1Y_UPPER s.global 194
scoreboard players set SETTING.FLOOR1Y_LOWER s.global 188

# FLOOR 2
scoreboard players set SETTING.FLOOR2Y_UPPER s.global 187
scoreboard players set SETTING.FLOOR2Y_LOWER s.global 181

# FLOOR 3
scoreboard players set SETTING.FLOOR3Y_UPPER s.global 180
scoreboard players set SETTING.FLOOR3Y_LOWER s.global 174

# FLOOR 4
scoreboard players set SETTING.FLOOR4Y_UPPER s.global 173
scoreboard players set SETTING.FLOOR4Y_LOWER s.global 167

# FLOOR 5
scoreboard players set SETTING.FLOOR5Y_UPPER s.global 166
scoreboard players set SETTING.FLOOR5Y_LOWER s.global 160

### }

## Floor time to forced progression [IN TICKS] (Define only used floors ... See above)
# EXAMPLE USAGE - where '$' = 'floor number'
# 'scoreboard players set SETTING.FLOOR$_TIME_TO_FP s.global INT'

### Definitions {

# Floor 1
scoreboard players set SETTING.FLOOR1_TIME_TO_FP s.global 350

# Floor 2
scoreboard players set SETTING.FLOOR2_TIME_TO_FP s.global 350

# Floor 3
scoreboard players set SETTING.FLOOR3_TIME_TO_FP s.global 350

# Floor 4
scoreboard players set SETTING.FLOOR4_TIME_TO_FP s.global 350

# Floor 5
scoreboard players set SETTING.FLOOR5_TIME_TO_FP s.global 500

### }

# Y level to disqualify player
scoreboard players set SETTING.DISQUALIFY_LEVEL s.global 159

# Tool to use
#replaceitem entity @s weapon netherite_pickaxe{SpleefTool:1b,HideFlags:127,Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:100s}]} 1

# Version to run 'on_tick' for
# RANGE = {1 = Standard, 2 = Tnt}
scoreboard players set SETTING.GAME_VERSION s.global 1
