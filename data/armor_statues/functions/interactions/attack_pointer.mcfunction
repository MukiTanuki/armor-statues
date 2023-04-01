#
# Description:	Adjust armor stand pose
# Called by:	armor_statues:interactions/attack
# Entity @s:	player
#
#
# sets score according to marker
#
# Stand visible
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_head_interactable] if entity @e[type=armor_stand,tag=as_selected, tag=as_selected, sort=nearest, limit=1, nbt={Invisible:0b}] run scoreboard players set @s as_trigger 10
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_head_interactable] if entity @e[type=armor_stand,tag=as_selected, tag=as_selected, sort=nearest, limit=1, nbt={Invisible:1b}] run scoreboard players set @s as_trigger 9
# Base visible
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_base_interactable] if entity @e[type=armor_stand,tag=as_selected, tag=as_selected, sort=nearest, limit=1, nbt={NoBasePlate:0b}] run scoreboard players set @s as_trigger 2
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_base_interactable] if entity @e[type=armor_stand,tag=as_selected, tag=as_selected, sort=nearest, limit=1, nbt={NoBasePlate:1b}] run scoreboard players set @s as_trigger 1
# ShowArms - attack arms
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_arm_interactable] if entity @e[type=armor_stand,tag=as_selected, tag=as_selected, sort=nearest, limit=1, nbt={ShowArms:0b}] run scoreboard players set @s as_trigger 3
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_arm_interactable] if entity @e[type=armor_stand,tag=as_selected, tag=as_selected, sort=nearest, limit=1, nbt={ShowArms:1b}] run scoreboard players set @s as_trigger 4
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_arm_interactable] if entity @e[type=armor_stand,tag=as_selected, tag=as_selected, sort=nearest, limit=1, nbt={ShowArms:0b}] run scoreboard players set @s as_trigger 3
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_arm_interactable] if entity @e[type=armor_stand,tag=as_selected, tag=as_selected, sort=nearest, limit=1, nbt={ShowArms:1b}] run scoreboard players set @s as_trigger 4
# Set preset pose- attack body
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] run scoreboard players add @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose 1
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 21.. run scoreboard players set @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose 1
# poses
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 1 run scoreboard players set @s as_trigger 20
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 2 run scoreboard players set @s as_trigger 21
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 3 run scoreboard players set @s as_trigger 22
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 4 run scoreboard players set @s as_trigger 23
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 5 run scoreboard players set @s as_trigger 24
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 6 run scoreboard players set @s as_trigger 25
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 7 run scoreboard players set @s as_trigger 26
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 8 run scoreboard players set @s as_trigger 27
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 9 run scoreboard players set @s as_trigger 28
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 10 run scoreboard players set @s as_trigger 29
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 11 run scoreboard players set @s as_trigger 30
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 12 run scoreboard players set @s as_trigger 31
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 13 run scoreboard players set @s as_trigger 32
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 14 run scoreboard players set @s as_trigger 33
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 15 run scoreboard players set @s as_trigger 34
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 16 run scoreboard players set @s as_trigger 35
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 17 run scoreboard players set @s as_trigger 36
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 18 run scoreboard players set @s as_trigger 37
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 19 run scoreboard players set @s as_trigger 38
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable] if score @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] as_current_pose matches 20 run scoreboard players set @s as_trigger 39
#
scoreboard players operation @e[type=minecraft:armor_stand,tag=as_selected,limit=1,sort=nearest] as_trigger = @s as_trigger
# Plays sound
execute if entity @s[scores={as_trigger=1..}] run playsound minecraft:item.spyglass.use neutral @a ~ ~ ~ 1 1.5
#
# Settings function
#
execute if entity @s[scores={as_trigger=1..12}] as @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] run function armor_statues:trigger/settings
#
# Preset function
#
execute if entity @s[scores={as_trigger=20..39}] as @e[type=armor_stand,tag=as_selected, sort=nearest, limit=1] run function armor_statues:trigger/presets