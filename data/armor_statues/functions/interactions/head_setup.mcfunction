#
# Description:	Sets up head interaction for interactions
# Called by:	armor_statues:interactions/setup
# Entity @s:	interaction
#
tag @s add as_interactable
tag @s add as_head_interactable
execute store result score @s as_uuid1 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[0]
execute store result score @s as_uuid2 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[1]
execute store result score @s as_uuid3 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[2]
execute store result score @s as_uuid4 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[3]
data merge entity @s {width: 0.38f, height: 0.38f, response:1b}
# fixes rotation
teleport @s ~ ~ ~ ~ ~
# nbt for block display
data merge entity @s[type=minecraft:block_display] {block_state: {Name: "minecraft:blue_stained_glass"}, transformation: {translation: [-0.19f, 0.0f, -0.19f], scale: [0.38f, 0.38f, 0.38f]}}
