#
# Description:	Checks if armor stand is undoable/redoable
# Called by:	as_statue:trigger
# Entity @s:	player
#
execute as @s run function armor_statues:storage_in
#
# Checks if UUID of armor stand matches that of the book
#
# checks if uuid matches armor stand
scoreboard players set #as_success as_angle 0
data remove storage armor_statues:uuid_check UUID
data modify storage armor_statues:uuid_check UUID set from storage armor_statues:book_storage SavedItem.tag.StatesUUID
execute store result score #as_success as_angle \
    as @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] run \
    function armor_statues:uuid_check with storage armor_statues:uuid_check {}
#
execute if score #as_success as_angle matches 0 as @s[tag=as_selected] run function armor_statues:player_message {\
    message: '{\
        "text":"Can\'t undo/redo state on current Armor Stand",\
        "color":"dark_red"\
    }'\
}
execute if score #as_success as_angle matches 0 run return 0
#
# Undo
#
execute as @s[scores={as_trigger=1200}] \
    unless data storage armor_statues:book_storage SavedItem.tag.UndoStates[] run \
    function armor_statues:player_message {\
    message: '{\
        "text":"No states to undo",\
        "color":"dark_red"\
    }'\
}
execute as @s[scores={as_trigger=1200}] \
    if data storage armor_statues:book_storage SavedItem.tag.UndoStates[] run \
    function armor_statues:repeat/undo
#
# Redo
#
execute as @s[scores={as_trigger=1201}] \
    unless data storage armor_statues:book_storage SavedItem.tag.RedoStates[] run \
    function armor_statues:player_message {\
    message: '{\
        "text":"No states to redo",\
        "color":"dark_red"\
    }'\
}
execute as @s[scores={as_trigger=1201}] \
    if data storage armor_statues:book_storage SavedItem.tag.RedoStates[] run \
    function armor_statues:repeat/redo