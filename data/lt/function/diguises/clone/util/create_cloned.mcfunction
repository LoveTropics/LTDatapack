#Todo Update this with brick style
summon ltextras:collectible ~ ~ ~ {  \
    Tags: ["disguises.player.cloned"], \
    collectible: { \
        item: "ltminigames:disguise", \
        components: { \
            "minecraft:lore": [\
                        '{"translate":"lt.collectible.player_clone.description","color":"gray","italic":true}',\
                        '{"text":" "}',\
                        '{"translate":"lt.collectible.unicode.secret","color":"white","italic":false}',\
                        '{"text":" "}',\
                        '{"translate":"item.modifiers.head","color":"gray","italic":false}',\
                        '{"translate":"lt.collectible.disguise.tooltip.subtract_player","color":"blue","italic":false}',\
                        '{"translate":"lt.collectible.player_clone.tooltip.add_horror","color":"blue","italic":false}' ,\
                        '[\
                            {\
                                "text":" + ",  \                          
                                "color": "blue", \                           
                                "italic": false  \                          
                            },\
                            {\
                                "translate":"lt.collectible.player_clone.tooltip.add",\
                                "with":[\
                                    {\
                                        "selector":"@p[tag=diguises.cloned.target]"\
                                    }                             \   
                                ],\
                                "color": "blue",\
                                "italic":false\
                            }\
                        ]'\
                ],\
                "ltminigames:disguise":{\
                    entity:{type:"dummyplayers:dummy_player"\
                }\
            }\
        }\
    }\
}


