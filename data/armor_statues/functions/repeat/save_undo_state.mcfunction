#
# Description:	Copies last state for undoing
# Called by:	as_statue:repeat/save
# Entity @s:	player
#
# Saves state for undoing
#
data modify storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates prepend value {}
#
data modify storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[0].Pose set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] Pose
data modify storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[0].NoBasePlate set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] NoBasePlate
data modify storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[0].ShowArms set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] ShowArms
data modify storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[0].Small set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] Small
data modify storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[0].Invisible set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] Invisible
data modify storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[0].CustomNameVisible set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] CustomNameVisible
data modify storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[0].NoGravity set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] NoGravity
data modify storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[0].Pos set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] Pos
data modify storage customizable_armor_stands:book_storage SavedItem.tag.UndoStates[0].Rotation set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] Rotation
