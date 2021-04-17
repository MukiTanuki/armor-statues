#
# Description:	Copies last state for undoing
# Called by:	as_statue:repeat/save
# Entity @s:	player
#
# Checks if UUID of armor stand matches that of the book
#
scoreboard players set #as_success as_angle 0
execute store success score #as_success as_angle run data modify storage customizable_armor_stands:book_storage SavedItem.tag.StatesUUID set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] UUID
execute if score #as_success as_angle matches 1 run data remove storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates
data remove storage customizable_armor_stands:book_storage SavedItem.tag.RedoStates
#
# Counts undo states and makes sure they're less than the maximum undo states
#
execute store result score #as_temp as_angle run data get storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates
execute if score #as_temp as_angle >= #undo_states as_angle run data remove storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[-1]
#
function armor_statues:repeat/save_undo_state
