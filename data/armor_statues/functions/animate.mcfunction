#
# Description:	Animate armor stands based off of item frames
# Called by:	armor_statues:tick
# Entity @s:	#item frames
#
tag @s add as_powered
data modify entity @e[type=minecraft:armor_stand,distance=..8,tag=!as_locked,sort=nearest,limit=1,nbt=!{Marker:1b},nbt=!{Invulnerable:1b}] {} merge from entity @s Item.tag.SavedPose
data modify entity @e[type=minecraft:armor_stand,distance=..8,tag=!as_locked,sort=nearest,limit=1,nbt=!{Marker:1b},nbt=!{Invulnerable:1b}] Pose set from entity @s Item.tag.SavedPose.Pose