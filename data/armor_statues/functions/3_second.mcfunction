#
# Description:	Check for players with trigger score set
# Called by:	#minecraft:load
# Entity @s:	none
#
schedule function armor_statues:3_second 3s
#
# Tags item frames with a book in them
#
execute if score #animate_trigger as_angle matches 1.. as @e[type=#armor_statues:item_frames,tag=!as_animatable,predicate=armor_statues:item_frame_with_book] run tag @s add as_animatable
# Untags
execute if score #animate_trigger as_angle matches 1.. as @e[type=#armor_statues:item_frames,tag=as_animatable,predicate=!armor_statues:item_frame_with_book] run tag @s remove as_animatable
