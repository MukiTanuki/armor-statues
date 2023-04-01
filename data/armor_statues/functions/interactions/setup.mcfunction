#
# Description:	Sets up armor stand for interactions
# Called by:	armor_statues:3_second
# Entity @s:	armor_stand
#
tag @s add as_interactable
tag @s add as_interactable_temp
data merge entity @s {Marker:1b}
execute store result score @s as_uuid1 run data get entity @s UUID[0]
execute store result score @s as_uuid2 run data get entity @s UUID[1]
execute store result score @s as_uuid3 run data get entity @s UUID[2]
execute store result score @s as_uuid4 run data get entity @s UUID[3]
# Head
execute rotated ~ 0 positioned ^ ^1.52 ^ summon minecraft:interaction run function armor_statues:interactions/head_setup
execute rotated ~ 0 positioned ^ ^1.52 ^ summon minecraft:block_display run function armor_statues:interactions/head_setup
# Body
execute rotated ~ 0 positioned ^ ^1.25 ^ summon minecraft:interaction run function armor_statues:interactions/body_setup
execute rotated ~ 0 positioned ^ ^1.25 ^ summon minecraft:block_display run function armor_statues:interactions/body_setup
# Right Arm
execute rotated ~ 0 positioned ^-0.34375 ^1.28125 ^ summon minecraft:interaction run function armor_statues:interactions/right_arm_setup
execute rotated ~ 0 positioned ^-0.34375 ^1.28125 ^ summon minecraft:block_display run function armor_statues:interactions/right_arm_setup
# Left Arm
execute rotated ~ 0 positioned ^0.34375 ^1.28125 ^ summon minecraft:interaction run function armor_statues:interactions/left_arm_setup
execute rotated ~ 0 positioned ^0.34375 ^1.28125 ^ summon minecraft:block_display run function armor_statues:interactions/left_arm_setup
# Right Leg
execute rotated ~ 0 positioned ^-0.125 ^0.65625 ^ summon minecraft:interaction run function armor_statues:interactions/right_leg_setup
execute rotated ~ 0 positioned ^-0.125 ^0.65625 ^ summon minecraft:block_display run function armor_statues:interactions/right_leg_setup
# Left Leg
execute rotated ~ 0 positioned ^0.125 ^0.65625 ^ summon minecraft:interaction run function armor_statues:interactions/left_leg_setup
execute rotated ~ 0 positioned ^0.125 ^0.65625 ^ summon minecraft:block_display run function armor_statues:interactions/left_leg_setup
# Base
execute rotated ~ 0 positioned ^ ^ ^ summon minecraft:interaction run function armor_statues:interactions/base_setup
execute rotated ~ 0 positioned ^ ^ ^ summon minecraft:block_display run function armor_statues:interactions/base_setup
# resets temp tag
tag @s remove as_interactable_temp