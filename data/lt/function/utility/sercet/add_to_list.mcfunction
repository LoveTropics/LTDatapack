scoreboard players add @s rube_party 1
collectible give @s lt:pen_knife
tellraw @a[tag=pen_party] {"selector":"@s","extra":[{"text":" Found the pen knife!","color":"red"}]}
tellraw @s {"translate": "lt.collectible.pen_knife.description"}