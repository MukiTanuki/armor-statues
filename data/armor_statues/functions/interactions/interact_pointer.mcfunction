#
# Description:	Pointing pose
# Called by:	advancement: armor_statues:interactions/interact
# Entity @s:	player
#
#
# sets score according to marker
#
# for base
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_base_interactable] run scoreboard players set @s as_trigger 124
# if not last used
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_head_interactable, tag=!as_last_used] run data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_selected] Pose merge value {Head:[0.01f, 0.01f, 0.01f]}
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable, tag=!as_last_used] run data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_selected] Pose merge value {Body:[0.01f, 0.01f, 0.01f]}
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_arm_interactable, tag=!as_last_used] run data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_selected] Pose merge value {RightArm:[0.01f, 0.01f, 0.01f]}
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_arm_interactable, tag=!as_last_used] run data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_selected] Pose merge value {LeftArm:[0.01f, 0.01f, 0.01f]}
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_leg_interactable, tag=!as_last_used] run data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_selected] Pose merge value {RightLeg:[0.01f, 0.01f, 0.01f]}
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_leg_interactable, tag=!as_last_used] run data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_selected] Pose merge value {LeftLeg:[0.01f, 0.01f, 0.01f]}
# if last used
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_head_interactable, tag=as_last_used] run scoreboard players set @s as_trigger 1160
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_body_interactable, tag=as_last_used] run scoreboard players set @s as_trigger 1161
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_arm_interactable, tag=as_last_used] run scoreboard players set @s as_trigger 1162
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_arm_interactable, tag=as_last_used] run scoreboard players set @s as_trigger 1163
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_right_leg_interactable, tag=as_last_used] run scoreboard players set @s as_trigger 1170
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable,tag=as_left_leg_interactable, tag=as_last_used] run scoreboard players set @s as_trigger 1171
#
scoreboard players operation @e[type=minecraft:armor_stand,tag=as_selected,limit=1,sort=nearest] as_trigger = @s as_trigger
#
# Pointing function
#
execute if entity @s[scores={as_trigger=1160..1171}] as @e[type=armor_stand,tag=as_selected,nbt={Small:0b}] at @s run function armor_statues:trigger/pointing
execute if entity @s[scores={as_trigger=1160..1171}] as @e[type=armor_stand,tag=as_selected,nbt={Small:1b}] at @s run function armor_statues:trigger/pointing_small
# facing function
execute if entity @s[scores={as_trigger=124..125}] as @e[type=armor_stand,tag=as_selected] at @s run function armor_statues:trigger/facing
execute if entity @s[scores={as_trigger=124..125}] as @e[type=armor_stand,tag=as_selected,nbt={Small:0b}] at @s run function armor_statues:interactions/readjust_interactions
execute if entity @s[scores={as_trigger=124..125}] as @e[type=armor_stand,tag=as_selected,nbt={Small:1b}] at @s run function armor_statues:interactions/readjust_interactions_small
# Plays sound
execute if entity @e[type=minecraft:interaction,tag=as_selected_interaction,tag=as_interactable, tag=!as_last_used] run playsound minecraft:item.spyglass.use neutral @a ~ ~ ~ 1 1.5
execute if entity @s[scores={as_trigger=1..}] run playsound minecraft:item.spyglass.use neutral @a ~ ~ ~ 1 1.5