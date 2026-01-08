#
# Description:	Animate armor stands based off of item frames
# Called by:	armor_statues:tick
# Entity @s:	#item frames
#
tag @s add as_powered
data modify entity @e[type=minecraft:armor_stand,distance=..8,tag=!as_locked,sort=nearest,limit=1,nbt=!{Marker:1b},nbt=!{Invulnerable:1b}] {} merge from entity @s Item.components.minecraft:custom_data.SavedPose
data modify entity @e[type=minecraft:armor_stand,distance=..8,tag=!as_locked,sort=nearest,limit=1,nbt=!{Marker:1b},nbt=!{Invulnerable:1b}] Pose set from entity @s Item.components.minecraft:custom_data.SavedPose.Pose
execute as @e[type=minecraft:armor_stand,distance=..8,tag=!as_locked,sort=nearest,limit=1,nbt=!{Marker:1b},nbt=!{Invulnerable:1b}] run function armor_statues:set_scale with entity @n[type=#armor_statues:item_frames,tag=as_powered] Item.components.minecraft:custom_data.SavedPose