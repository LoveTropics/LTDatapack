$say Update name $(name)
$data modify entity @s collectible.components.minecraft:custom_name set value '[{"translate":"lt.collectible.player_clone.tooltip.add","with":[{"text":"$(name)","color":"blue","italic":false}],"italic":false}]'
$data modify entity @s collectible.components.minecraft:lore[7] set value '[{"text":" + ","color":"blue","italic":false},{"translate":"lt.collectible.player_clone.tooltip.add","with":[{"text":"$(name)","color":"blue","italic":false}]}]'
