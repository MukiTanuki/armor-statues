#
# Description:	Undo last armor stand action
# Called by:	as_statue:repeat/undo_redo
# Entity @s:	player
#
# Copies current state to undo states
#
function armor_statues:repeat/save_undo_state
#
# Copies last redo state to armor stand
#
data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] {} merge from storage customizable_armor_stands:book_storage SavedItem.tag.RedoStates[0]
data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] Pose set from storage customizable_armor_stands:book_storage SavedItem.tag.RedoStates[0].Pose
#
# Deletes redo state
#
data remove storage customizable_armor_stands:book_storage SavedItem.tag.RedoStates[0]
#
# Modifies book data
#
execute as @s run function armor_statues:storage_out