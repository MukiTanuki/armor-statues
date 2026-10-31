#
# Description:	adds a tag to an item frame to ignore players for animation
# Called by:	armor_statues:admin
# Entity @s:	player
#
execute at @n[type=#armor_statues:item_frames,distance=..16,tag=!as_ignore_player] run particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0 8
execute as @n[type=#armor_statues:item_frames,distance=..16,tag=!as_ignore_player] run tag @s add as_ignore_player