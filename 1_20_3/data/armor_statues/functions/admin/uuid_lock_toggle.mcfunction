#
# Description:	Enable option to make locking match player uuids
# Called by:	armor_statues:admin via chat link
# Entity @s:	player
#
scoreboard players set #as_success as_angle 0
scoreboard players operation #as_success as_angle = #uuid_locking as_angle
execute if score #as_success as_angle matches 0 run scoreboard players set #uuid_locking as_angle 1
execute if score #as_success as_angle matches 1 run scoreboard players set #uuid_locking as_angle 0
#
execute if score #uuid_locking as_angle matches 0 run tellraw @s [\
    {\
        "text":"UUID locking has been ",\
        "color":"aqua"\
    },\
    {\
        "text":"Disabled"\
    }\
]
execute if score #uuid_locking as_angle matches 1 run tellraw @s [\
    {\
        "text":"UUID locking has been ",\
        "color":"aqua"\
    },\
    {\
        "text":"Enabled"\
    }\
]
#
function armor_statues:admin
