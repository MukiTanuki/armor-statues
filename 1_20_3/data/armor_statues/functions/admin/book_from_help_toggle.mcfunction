#
# Description:	Disable option to get the book directly from the help menu
# Called by:	armor_statues:admin via chat link
# Entity @s:	player
#
scoreboard players set #as_success as_angle 0
scoreboard players operation #as_success as_angle = #help_craftable as_angle
execute if score #as_success as_angle matches 0 run scoreboard players set #help_craftable as_angle 1
execute if score #as_success as_angle matches 1 run scoreboard players set #help_craftable as_angle 0
#
execute if score #help_craftable as_angle matches 0 run tellraw @s [\
    {\
        "text":"Getting the book from the help menu has been ",\
        "color":"aqua"\
    },\
    {\
        "text":"Disabled"\
    }\
]
execute if score #help_craftable as_angle matches 1 run tellraw @s [\
    {\
        "text":"Getting the book from the help menu has been ",\
        "color":"aqua"\
    },\
    {\
        "text":"Enabled"\
    }\
]
#
function armor_statues:admin