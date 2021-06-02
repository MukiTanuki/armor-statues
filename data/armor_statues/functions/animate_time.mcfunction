#
# Description:	Animate armor stands based off of item frames
# Called by:	armor_statues:tick
# Entity @s:	None
#
execute as @e[type=#armor_statues:item_frames,tag=as_animatable,tag=!as_powered] at @s if entity @p[distance=..35] if block ~ ~ ~ minecraft:redstone_wire unless block ~ ~ ~ minecraft:redstone_wire[power=0] run function armor_statues:animate
execute as @e[type=#armor_statues:item_frames,tag=as_animatable,tag=as_powered] at @s if block ~ ~ ~ minecraft:redstone_wire[power=0] run tag @s remove as_powered
scoreboard players set #animate_time as_angle 0