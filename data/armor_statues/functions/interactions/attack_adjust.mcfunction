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
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_head_interactable] run scoreboard players set @s as_trigger 60
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] run scoreboard players set @s as_trigger 66
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_arm_interactable] run scoreboard players set @s as_trigger 72
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_arm_interactable] run scoreboard players set @s as_trigger 78
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_leg_interactable] run scoreboard players set @s as_trigger 84
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_leg_interactable] run scoreboard players set @s as_trigger 90
execute if score #wand_type as_angle matches 0 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_base_interactable] run scoreboard players set @s as_trigger 1102
# Y axis
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_head_interactable] run scoreboard players set @s as_trigger 62
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] run scoreboard players set @s as_trigger 68
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_arm_interactable] run scoreboard players set @s as_trigger 74
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_arm_interactable] run scoreboard players set @s as_trigger 80
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_leg_interactable] run scoreboard players set @s as_trigger 86
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_leg_interactable] run scoreboard players set @s as_trigger 92
execute if score #wand_type as_angle matches 1 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_base_interactable] run scoreboard players set @s as_trigger 106
# Z axis
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_head_interactable] run scoreboard players set @s as_trigger 64
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] run scoreboard players set @s as_trigger 70
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_arm_interactable] run scoreboard players set @s as_trigger 76
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_arm_interactable] run scoreboard players set @s as_trigger 82
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_leg_interactable] run scoreboard players set @s as_trigger 88
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_leg_interactable] run scoreboard players set @s as_trigger 94
execute if score #wand_type as_angle matches 2 if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_base_interactable] run scoreboard players set @s as_trigger 1108
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