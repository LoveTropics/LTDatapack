collectible give @s ltminigames:disguise{    display: {        Name:'        [            {                "translate":"lt.collectible.player_clone.name",                "with":[                  {                    "selector":"@p[tag=diguises.cloned.target]",                    "color":"#5ABDA3"                  }                ],                "color":"#5ABDA3",                "italic":false            }        ]',        Lore: [            '{                "translate":"lt.collectible.player_clone.description",                "color":"gray",                "italic":true            }',            '{"text":" "}',            '{"translate":"lt.collectible.unicode.secret","color":"white","italic":false}',            '{"text":" "}','{"translate":"item.modifiers.head","color":"gray","italic":false}',            '{"translate":"lt.collectible.disguise.tooltip.subtract_player","color":"blue","italic":false}',            '[                {"text":" + ","color":"blue","italic":false},                {                    "translate":"lt.collectible.player_clone.tooltip.add",                    "with":                    [                        {                            "selector":"@p[tag=diguises.cloned.target]"                            }                    ],                    "color":"blue",                    "italic":false                    }            ]'        ]    },    HideFlags:255,    Enchantments:[{}],    disguise:{        entity:        {            type:"dummyplayers:dummy_player"        }    }}