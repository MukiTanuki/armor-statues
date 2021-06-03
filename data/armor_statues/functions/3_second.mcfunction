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
#
# Turns invisible armor stands visible if they don't have any items, customNameVisible, aren't locked, are markers, or invulnerable
#
execute as @e[type=minecraft:armor_stand, tag=as_invisible, nbt={Invisible:1b}, nbt=!{Invulnerable:1b}, nbt=!{Marker:1b}, nbt=!{HandItems:[ {Count:1b} ]}, nbt=!{ArmorItems:[ {Count:1b} ]}, nbt=!{CustomNameVisible:1b}, tag=!as_locked] run function armor_statues:set_visible
#
# Unlocks tool rack armor stands if the tripwire hook is broken
#
execute as @e[type=minecraft:armor_stand, tag=as_tool_rack, nbt=!{Small:1b}] at @s unless block ~ ~1 ~ minecraft:tripwire_hook run function armor_statues:remove_tool_rack
execute as @e[type=minecraft:armor_stand, tag=as_tool_rack, nbt={Small:1b}] at @s anchored eyes unless block ^ ^ ^ minecraft:tripwire_hook run function armor_statues:remove_tool_rack