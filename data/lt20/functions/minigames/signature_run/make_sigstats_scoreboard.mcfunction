scoreboard players reset * SigStats
scoreboard players set -------------------------- SigStats 15
scoreboard players set TimeLeft: SigStats 14
scoreboard players set  SigStats 13
scoreboard players set SignaturesReturned: SigStats 12
scoreboard players set ViolationsFound: SigStats 11
scoreboard players set -------------------------- SigStats 10
scoreboard players set ActiveDisaster: SigStats 9
scoreboard players set  SigStats 6
scoreboard players set ActiveOhNo!: SigStats 5

scoreboard players set -------------------------- SigStats 0


# COLORS AND PREFIXES AND SUFFIXES
team add srLineColor
team add srTimeLeft
team add srSigsReturned
team add srViolations
team add srActiveDis
team add srActiveOhNo

team modify srLineColor color dark_aqua
team modify srTimeLeft color yellow
team modify srSigsReturned color green
team modify srViolations color light_purple
team modify srActiveDis color dark_gray
team modify srActiveOhNo color dark_gray

team modify srTimeLeft prefix [{"text":"§l"}]

team modify srSigsReturned prefix [{"text":"§l"},{"translate":"\uE002","color":"white"},{"text":" "}]
team modify srViolations prefix [{"text":"§l"},{"translate":"\uE003","color":"white"},{"text":" "}]
# IS TEMPORARY PROPER COMMAND COMMENTED BELOW
team modify srTimeLeft suffix [{"translate":"\uE001"},{"translate":"\uE001"},{"text":"0","color":"red"},{"text":":","color":"gray"},{"text":"00","color":"red"}]

# IS TEMPORARY PROPER COMMAND COMMENTED BELOW
team modify srSigsReturned suffix [{"translate":"\uE001"},{"translate":"\uE001"},{"text":"0","color":"aqua","bold":true},{"text":"/","color":"gray","bold":false},{"text":"75","color":"aqua","bold":false}]

# IS TEMPORARY PROPER COMMAND COMMENTED BELOW
team modify srViolations suffix [{"translate":"\uE001"},{"translate":"\uE001"},{"text":"0","color":"aqua","bold":true}]


# JOINS FAKE PLAYERS TO TEAMS
team join srLineColor --------------------------
team join srLineColor --------------------------
team join srLineColor --------------------------

team join srTimeLeft TimeLeft:

team join srSigsReturned SignaturesReturned:

team join srViolations ViolationsFound:

team join srActiveDis ActiveDisaster:

team join srActiveOhNo ActiveOhNo!:
