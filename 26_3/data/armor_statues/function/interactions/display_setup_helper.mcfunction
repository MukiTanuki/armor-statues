#
# Description:	Sets up display and interaction for interactions
# Called by:	armor_statues:interactions/setup
# Entity @s:	interaction|block display
# Parameters:
#   type (str): appendage to assign to
#   block (str): block for display entity
#   x (float): x coord
#   y (float): y coord
#   translation (float): translation of block display
#   scale (float): scale of display entity
#
#$say type: $(type) block: $(block) x: $(x) y: $(y) translation: $(translation) scale: $(scale)
tag @s add as_interactable
$tag @s add as_$(type)_interactable
execute store result score @s as_uuid1 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[0]
execute store result score @s as_uuid2 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[1]
execute store result score @s as_uuid3 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[2]
execute store result score @s as_uuid4 run data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_interactable_temp] UUID[3]
$data merge entity @s {width: $(scale)f, height: $(scale)f, response:1b}
# fixes rotation and position
teleport @s ~ ~ ~ ~ ~
$tp ^$(x) ^$(y) ^
# nbt for block display
$data merge entity @s[type=minecraft:block_display] {block_state: {id: "$(block)"}, transformation: {translation: [$(translation)f, 0.0f, $(translation)f], scale: [$(scale)f, $(scale)f, $(scale)f]}}
