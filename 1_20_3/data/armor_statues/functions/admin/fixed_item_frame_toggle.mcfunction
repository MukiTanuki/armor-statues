#
# Description:	Enable option to get allow item frame fixing from the book
# Called by:	armor_statues:admin via chat link
# Entity @s:	player
#
scoreboard players set #as_success as_angle 0
scoreboard players operation #as_success as_angle = #fixing_enabled as_angle
execute if score #as_success as_angle matches 0 run scoreboard players set #fixing_enabled as_angle 1
execute if score #as_success as_angle matches 1 run scoreboard players set #fixing_enabled as_angle 0
#
execute if score #fixing_enabled as_angle matches 0 run tellraw @s [\
    {\
        "text":"Fixing item frame option has been ",\
        "color":"aqua"\
    },\
    {\
        "text":"Disabled"\
    }\
]
execute if score #fixing_enabled as_angle matches 1 run tellraw @s [\
    {\
        "text":"Fixing item frame option has been ",\
        "color":"aqua"\
    },\
    {\
        "text":"Enabled"\
    }\
]
#
function armor_statues:admin
