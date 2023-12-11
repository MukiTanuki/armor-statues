#
# Description:	Copies last state for undoing
# Called by:	as_statue:repeat/save
# Entity @s:	player
#
# Checks if UUID of armor stand matches that of the book
#
#scoreboard players set #as_success as_angle 0
#execute store success score #as_success as_angle run data modify storage armor_statues:book_storage SavedItem.tag.StatesUUID set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] UUID
#execute if score #as_success as_angle matches 1 run data remove storage armor_statues:book_storage SavedItem.tag.UndoStates
#data remove storage armor_statues:book_storage SavedItem.tag.RedoStates

# checks if uuid matches armor stand
scoreboard players set #as_success as_angle 0
data remove storage armor_statues:uuid_check UUID
data modify storage armor_statues:uuid_check UUID set from storage armor_statues:book_storage SavedItem.tag.StatesUUID
execute store result score #as_success as_angle \
    as @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] run \
    function armor_statues:uuid_check with storage armor_statues:uuid_check {}
#
execute if score #as_success as_angle matches 0 run data modify storage armor_statues:book_storage SavedItem.tag.UndoStates set value []
execute if score #as_success as_angle matches 0 run data modify storage armor_statues:book_storage SavedItem.tag.StatesUUID set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] UUID
data modify storage armor_statues:book_storage SavedItem.tag.RedoStates set value []
#
# Counts undo states and makes sure they're less than the maximum undo states
#
execute store result score #as_temp as_angle run data get storage armor_statues:book_storage SavedItem.tag.UndoStates
execute if score #as_temp as_angle >= #undo_states as_angle run data remove storage armor_statues:book_storage SavedItem.tag.UndoStates[-1]
#
function armor_statues:repeat/save_undo_state
