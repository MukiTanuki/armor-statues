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
#
# Sets an armor stand to interactable if player is holding a wand
#
execute as @a[predicate=armor_statues:holding_wand] at @s positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,distance=..3,tag=!as_locked,tag=!as_interactable,nbt=!{Marker:1b},nbt=!{Invulnerable:1b},nbt={Small:0b}] at @s run function armor_statues:interactions/setup
execute as @a[predicate=armor_statues:holding_wand] at @s positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,distance=..3,tag=!as_locked,tag=!as_interactable,nbt=!{Marker:1b},nbt=!{Invulnerable:1b},nbt={Small:1b}] at @s run function armor_statues:interactions/setup_small
#
# Resets interactable armor stands
#
execute as @e[type=minecraft:armor_stand,tag=as_interactable] at @s unless entity @p[predicate=armor_statues:holding_wand,distance=..4] run function armor_statues:interactions/reset_armor_stand
#
# Resets stray interactable and block entities
#
execute as @e[type=#armor_statues:interactable,type=!minecraft:armor_stand,tag=as_interactable] at @s unless entity @p[predicate=armor_statues:holding_wand,distance=..8] run kill @s
#
# turns armor stands with names visible
#
execute as @e[type=minecraft:armor_stand,nbt=!{CustomNameVisible:1b}, nbt=!{Marker:1b}, nbt=!{Invulnerable:1b}] if data entity @s CustomName run data merge entity @s {CustomNameVisible:1b}
#
# re-enables triggers
#
scoreboard players enable * pointer_wand
scoreboard players enable * adjustment_wand