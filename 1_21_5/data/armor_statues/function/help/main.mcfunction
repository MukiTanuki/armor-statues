#
# Description:	Display main help options
# Called by:	armor_statues:help
# Entity @s:	Player
#
tellraw @s [\
    {\
        "text":"Customizable Armor Stands - Help",\
        "color":"yellow",\
        "bold":true\
    },\
    {\
        "text":"\nGet the book by:",\
        "color":"aqua",\
        "bold":false\
    }\
]
execute if score #help_craftable as_angle matches 1 run tellraw @s [\
    {\
        "text":" - Clicking ",\
        "color":"aqua"\
    },\
    {\
        "text":"here",\
        "color":"green",\
        "click_event":{\
            "action":"run_command",\
            "command":"/trigger as_help set 2"\
        }\
    }\
]
execute if score #as_shrine_x as_help matches ..0 run tellraw @s [\
    {\
        "text":" - Going to the shrine at ",\
        "color":"aqua"\
    },\
    {\
        "score":{\
            "name":"#as_shrine_x",\
            "objective":"as_help"\
        },\
        "color":"aqua"\
    },\
    {\
        "text":",",\
        "color":"aqua"\
    },\
    {\
        "score":{\
            "name":"#as_shrine_z",\
            "objective":"as_help"\
        },\
        "color":"aqua"\
    }\
]
execute if score #as_shrine_x as_help matches 1.. run tellraw @s [\
    {\
        "text":" - Going to the shrine at ",\
        "color":"aqua"\
    },\
    {\
        "score":{\
            "name":"#as_shrine_x",\
            "objective":"as_help"\
        },\
        "color":"aqua"\
    },\
    {\
        "text":",",\
        "color":"aqua"\
    },\
    {\
        "score":{\
            "name":"#as_shrine_z",\
            "objective":"as_help"\
        },\
        "color":"aqua"\
    }\
]
execute if score #book_uncraftable as_angle matches 0 run tellraw @s [\
    {\
        "text":" - Crafting a written book titled \"Statues\"",\
        "color":"aqua"\
    }\
]
tellraw @s [\
    {\
        "text":" - Crafting a book with an armor stand in a crafting table",\
        "color":"aqua"\
    }\
]
#
# Pointer wand
#
tellraw @s [\
    {\
        "text":"Get the Pointer Wand by:",\
        "color":"aqua",\
        "bold":false\
    }\
]
execute if score #pointer_triggerable as_angle matches 1 run tellraw @s [\
    {\
        "text":" - Use /trigger pointer_wand with a warped fungus on a stick",\
        "color":"aqua"\
    }\
]
execute if score #pointer_craftable as_angle matches 1 run tellraw @s [\
    {\
        "text":" - Rename a stick \"Statues\"",\
        "color":"aqua"\
    }\
]
tellraw @s [\
    {\
        "text":" - Crafting a stick with an armor stand in a crafting table",\
        "color":"aqua"\
    }\
]
#
# Adjustment wand
#
tellraw @s [\
    {\
        "text":"Get the Adjustment Wand by:",\
        "color":"aqua",\
        "bold":false\
    }\
]
execute if score #adjustment_triggerable as_angle matches 1 run tellraw @s [\
    {\
        "text":" - Use /trigger adjustment_wand with a warped fungus on a stick",\
        "color":"aqua"\
    }\
]
execute if score #adjustment_craftable as_angle matches 1 run tellraw @s [\
    {\
        "text":" - Rename a warped fungus on a stick \"Statues\"",\
        "color":"aqua"\
    }\
]
tellraw @s [\
    {\
        "text":" - Crafting a warped fungus on a stick with an armor stand in a crafting table",\
        "color":"aqua"\
    }\
]
execute if entity @s[tag=as_chat] run tellraw @s [\
    {\
        "text":"Send notifications to: ",\
        "color":"aqua"\
    },\
    {\
        "text":"Chat",\
        "color":"green",\
        "click_event":{\
            "action":"run_command",\
            "command":"/trigger as_help set 3"\
        },\
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle between Chat and Actionbar", \
                "color":"yellow"\
            }\
        }\
    }\
]
execute if entity @s[tag=!as_chat] run tellraw @s [\
    {\
        "text":"Send notifications to: ",\
        "color":"aqua"\
    },\
    {\
        "text":"Actionbar",\
        "color":"green",\
        "click_event":{\
            "action":"run_command",\
            "command":"/trigger as_help set 3"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle between Chat and Actionbar", \
                "color":"yellow"\
            }\
        }\
    }\
]
tellraw @s [\
    {\
        "text":"Credits",\
        "color":"green",\
        "click_event":{\
            "action":"run_command",\
            "command":"/trigger as_help set 4"\
        }\
    }\
]
tellraw @s [\
    {\
        "text":"--------------------------",\
        "color":"yellow",\
        "bold":true\
    }\
]
