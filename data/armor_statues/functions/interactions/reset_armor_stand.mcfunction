#
# Description:	Resets armor stand for interactions
# Called by:	armor_statues:3_second
# Entity @s:	armor_stand
#
# Stores uuid to select entities
scoreboard players operation #uuid_selector as_uuid1 = @s as_uuid1
scoreboard players operation #uuid_selector as_uuid2 = @s as_uuid2
scoreboard players operation #uuid_selector as_uuid3 = @s as_uuid3
scoreboard players operation #uuid_selector as_uuid4 = @s as_uuid4
# Selects entities from their stored uuid
function armor_statues:select_by_uuid
kill @e[type=minecraft:interaction,tag=as_uuid_selected]
kill @e[type=minecraft:block_display,tag=as_uuid_selected]
tag @e[tag=as_uuid_selected] remove as_uuid_selected
# Resets armor stand
tag @s remove as_interactable
data merge entity @s {Marker: 0b}