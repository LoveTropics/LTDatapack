# Get color 1
tag @e[tag=p.cb.hit_detection,sort=random,limit=1] add p.cb.get_color
scoreboard players operation color1 p.cb.order = @e[tag=p.cb.get_color,limit=1] p.cb.color
tag @e[tag=p.cb.hit_detection] remove p.cb.get_color

# Get Color 2
tag @e[tag=p.cb.hit_detection,sort=random,limit=1] add p.cb.get_color
scoreboard players operation color2 p.cb.order = @e[tag=p.cb.get_color,limit=1] p.cb.color
tag @e[tag=p.cb.hit_detection] remove p.cb.get_color

# Get Color 3
tag @e[tag=p.cb.hit_detection,sort=random,limit=1] add p.cb.get_color
scoreboard players operation color3 p.cb.order = @e[tag=p.cb.get_color,limit=1] p.cb.color
tag @e[tag=p.cb.hit_detection] remove p.cb.get_color

# Get Color 4
tag @e[tag=p.cb.hit_detection,sort=random,limit=1] add p.cb.get_color
scoreboard players operation color4 p.cb.order = @e[tag=p.cb.get_color,limit=1] p.cb.color
tag @e[tag=p.cb.hit_detection] remove p.cb.get_color

# Get Color 5
tag @e[tag=p.cb.hit_detection,sort=random,limit=1] add p.cb.get_color
scoreboard players operation color5 p.cb.order = @e[tag=p.cb.get_color,limit=1] p.cb.color
tag @e[tag=p.cb.hit_detection] remove p.cb.get_color

### Set activeColor and colorRound values in p.cb.global
scoreboard players set colorRound p.cb.global 1
scoreboard players set currentRound p.cb.global 1
scoreboard players operation activeColor p.cb.global = color1 p.cb.global
