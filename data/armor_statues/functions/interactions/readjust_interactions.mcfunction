#
# Description:	teleports interactions to correct positions
# Called by:	armor_statues:interactions/interact_pointer
# Entity @s:	armor_stand
#
# Stores uuid to select entities
scoreboard players operation #uuid_selector as_uuid1 = @s as_uuid1
scoreboard players operation #uuid_selector as_uuid2 = @s as_uuid2
scoreboard players operation #uuid_selector as_uuid3 = @s as_uuid3
scoreboard players operation #uuid_selector as_uuid4 = @s as_uuid4
# Selects entities from their stored uuid
function armor_statues:select_by_uuid
# head
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_head_interactable] rotated ~ 0 run tp ^ ^1.52 ^
# body
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_body_interactable] rotated ~ 0 run tp ^ ^1.25 ^
# right arm
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_right_arm_interactable] rotated ~ 0 run tp ^-0.34375 ^1.28125 ^
# left arm
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_left_arm_interactable] rotated ~ 0 run tp ^0.34375 ^1.28125 ^
# right leg
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_right_leg_interactable] rotated ~ 0 run tp ^-0.125 ^0.65625 ^
# left leg
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_left_leg_interactable] rotated ~ 0 run tp ^0.125 ^0.65625 ^
# base
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_base_interactable] rotated ~ 0 run tp ^ ^ ^
tag @e[tag=as_uuid_selected] remove as_uuid_selected