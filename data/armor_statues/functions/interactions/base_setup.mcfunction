#
# Description:	Sets up base interaction for interactions
# Called by:	armor_statues:interactions/setup
# Entity @s:	interaction
#
tag @s add as_interactable
tag @s add as_base_interactable
execute store result score @s as_uuid1 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[0]
execute store result score @s as_uuid2 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[1]
execute store result score @s as_uuid3 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[2]
execute store result score @s as_uuid4 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[3]
data merge entity @s {width: 0.25f, height: 0.25f, response:1b}
# fixes rotation
teleport @s ~ ~ ~ ~ ~
# nbt for block display
data merge entity @s[type=minecraft:block_display] {block_state: {Name: "minecraft:black_stained_glass"}, transformation: {translation: [-0.125f, 0.0f, -0.125f], scale: [0.25f, 0.25f, 0.25f]}}