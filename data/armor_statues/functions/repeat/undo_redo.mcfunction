#
# Description:	Checks if armor stand is undoable/redoable
# Called by:	as_statue:trigger
# Entity @s:	player
#
execute as @s run function armor_statues:storage_in
#
# Checks if UUID of armor stand matches that of the book
#


#execute store success score #as_success as_angle run data modify storage customizable_armor_stands:book_storage SavedItem.tag.StatesUUID set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] UUID

# checks if uuid matches armor stand
scoreboard players set #as_success as_angle 0
data remove storage customizable_armor_stands:uuid_check UUID
data modify storage customizable_armor_stands:uuid_check UUID set from storage customizable_armor_stands:book_storage SavedItem.tag.StatesUUID
execute store result score #as_success as_angle \
    as @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] run \
    function armor_statues:uuid_check with storage customizable_armor_stands:uuid_check {}
#
execute if score #as_success as_angle matches 0 run \
    title @a[tag=as_selected,tag=!as_chat] actionbar \
        [\
            {\
                "text":"Can't undo/redo state on current Armor Stand",\
                "color":"dark_green"\
            }\
        ]
execute if score #as_success as_angle matches 0 run \
    tellraw @a[tag=as_selected,tag=as_chat] \
        [\
            {\
                "text":"<Stick_God> ",\
                "color":"dark_green"\
            }, \
            {\
                "text":"Can't undo/redo state on current Armor Stand",\
                "color":"dark_green"\
            }\
        ]
execute if score #as_success as_angle matches 0 run return 0
#
# Undo
#
execute as @s[scores={as_trigger=1200}] \
    unless data storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[] run \
    title @a[tag=as_selected,tag=!as_chat] actionbar \
        [\
            {\
                "text":"No states to undo",\
                "color":"dark_green"\
            }\
        ]
execute as @s[scores={as_trigger=1200}] \
    unless data storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[] run \
    tellraw @a[tag=as_selected,tag=as_chat] \
        [\
            {\
                "text":"<Stick_God> ",\
                "color":"dark_green"\
            }, \
            {\
                "text":"No states to undo",\
                "color":"dark_green"\
            }\
        ]
execute as @s[scores={as_trigger=1200}] \
    if data storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[] run \
    function armor_statues:repeat/undo
#
# Redo
#
execute as @s[scores={as_trigger=1201}] \
    unless data storage customizable_armor_stands:book_storage SavedItem.tag.RedoStates[] run \
    title @a[tag=as_selected,tag=!as_chat] actionbar \
        [\
            {\
                "text":"No states to redo",\
                "color":"dark_green"\
            }\
        ]
execute as @s[scores={as_trigger=1201}] \
    unless data storage customizable_armor_stands:book_storage SavedItem.tag.RedoStates[] run \
    tellraw @a[tag=as_selected,tag=as_chat] \
        [\
            {\
                "text":"<Stick_God> ",\
                "color":"dark_green"\
            }, \
            {\
                "text":"No states to redo",\
                "color":"dark_green"\
            }\
        ]
execute as @s[scores={as_trigger=1201}] \
    if data storage customizable_armor_stands:book_storage SavedItem.tag.RedoStates[] run \
    function armor_statues:repeat/redo