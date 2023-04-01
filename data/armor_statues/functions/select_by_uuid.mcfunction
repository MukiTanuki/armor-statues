#
# Description:	Selects entities by stored uuid
# Called by:	armor_statues:interactions/reset_interactable
# Entity @s:	
#
execute as @e[type=#armor_statues:selectable] if score @s as_uuid1 = #uuid_selector as_uuid1 if score @s as_uuid2 = #uuid_selector as_uuid2 if score @s as_uuid3 = #uuid_selector as_uuid3 if score @s as_uuid4 = #uuid_selector as_uuid4 run tag @s add as_uuid_selected