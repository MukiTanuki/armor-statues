#
# Description:	adjusting pose
# Called by:	advancement: armor_statues:interactions/interact
# Entity @s:	player
#
scoreboard players set #wand_type as_angle 0
# gets current wand type
execute store result score #wand_type as_angle run data get entity @s SelectedItem.tag.type
#
# sets score according to marker
#
# X axis
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_head_interactable] run scoreboard players set @s as_trigger 61
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] run scoreboard players set @s as_trigger 67
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_arm_interactable] run scoreboard players set @s as_trigger 73
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_arm_interactable] run scoreboard players set @s as_trigger 79
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_leg_interactable] run scoreboard players set @s as_trigger 85
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_leg_interactable] run scoreboard players set @s as_trigger 91
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_base_interactable] run scoreboard players set @s as_trigger 1103
# Y axis
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_head_interactable] run scoreboard players set @s as_trigger 63
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] run scoreboard players set @s as_trigger 69
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_arm_interactable] run scoreboard players set @s as_trigger 75
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_arm_interactable] run scoreboard players set @s as_trigger 81
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_leg_interactable] run scoreboard players set @s as_trigger 87
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_leg_interactable] run scoreboard players set @s as_trigger 93
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_base_interactable] run scoreboard players set @s as_trigger 107
# Z axis
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_head_interactable] run scoreboard players set @s as_trigger 65
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] run scoreboard players set @s as_trigger 71
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_arm_interactable] run scoreboard players set @s as_trigger 77
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_arm_interactable] run scoreboard players set @s as_trigger 83
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_leg_interactable] run scoreboard players set @s as_trigger 89
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_leg_interactable] run scoreboard players set @s as_trigger 95
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_base_interactable] run scoreboard players set @s as_trigger 1109
#
scoreboard players operation @e[type=minecraft:armor_stand,tag=as_selected,limit=1,sort=nearest] as_trigger = @s as_trigger
#
# Adjust pose function
#
execute if entity @s[scores={as_trigger=60..95}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/adjust
# nudge function
execute if entity @s[scores={as_trigger=101..112}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/position
execute if entity @s[scores={as_trigger=101..112}] as @e[type=armor_stand,tag=as_selected,nbt={Small:0b}] at @s run function armor_statues:interactions/readjust_interactions
execute if entity @s[scores={as_trigger=101..112}] as @e[type=armor_stand,tag=as_selected,nbt={Small:1b}] at @s run function armor_statues:interactions/readjust_interactions_small
execute if entity @s[scores={as_trigger=1100..1129}] as @e[type=armor_stand,tag=as_selected] at @s run function armor_statues:trigger/position_relative
execute if entity @s[scores={as_trigger=1100..1129}] as @e[type=armor_stand,tag=as_selected,nbt={Small:0b}] at @s run function armor_statues:interactions/readjust_interactions
execute if entity @s[scores={as_trigger=100..1129}] as @e[type=armor_stand,tag=as_selected,nbt={Small:1b}] at @s run function armor_statues:interactions/readjust_interactions_small
# turn off gravity if adjust Y
execute if entity @s[scores={as_trigger=106..107}] as @e[type=armor_stand,tag=as_selected] run data merge entity @s {NoGravity:1b}
# Plays sound
execute if entity @s[scores={as_trigger=1..}] run playsound minecraft:item.spyglass.use neutral @a ~ ~ ~ 1 1.5