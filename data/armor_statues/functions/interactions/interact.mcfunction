#
# Description:	Adjust armor stand pose
# Called by:	advancement: armor_statues:use_interaction
# Entity @s:	player
#
# tag setup
tag @s add as_selected
tag @e[type=minecraft:interaction, distance=..6, nbt={interaction:{}}, tag=as_interactable] add as_selected_interaction
# Stores uuid to select entities
scoreboard players operation #uuid_selector as_uuid1 = @e[type=minecraft:interaction, tag=as_selected_interaction, sort=nearest, limit=1] as_uuid1
scoreboard players operation #uuid_selector as_uuid2 = @e[type=minecraft:interaction, tag=as_selected_interaction, sort=nearest, limit=1] as_uuid2
scoreboard players operation #uuid_selector as_uuid3 = @e[type=minecraft:interaction, tag=as_selected_interaction, sort=nearest, limit=1] as_uuid3
scoreboard players operation #uuid_selector as_uuid4 = @e[type=minecraft:interaction, tag=as_selected_interaction, sort=nearest, limit=1] as_uuid4
# Selects entities from their stored uuid
function armor_statues:select_by_uuid
tag @e[type=armor_stand, tag=as_uuid_selected, sort=nearest, limit=1] add as_selected
tag @e[tag=as_uuid_selected] remove as_uuid_selected
#
# Checks if used last used on same entity
#
execute store result score #uuid_matcher1 as_uuid1 run data get entity @s SelectedItem.tag.LastUsed[0]
execute store result score #uuid_matcher1 as_uuid2 run data get entity @s SelectedItem.tag.LastUsed[1]
execute store result score #uuid_matcher1 as_uuid3 run data get entity @s SelectedItem.tag.LastUsed[2]
execute store result score #uuid_matcher1 as_uuid4 run data get entity @s SelectedItem.tag.LastUsed[3]
execute store result score #uuid_matcher2 as_uuid1 run data get entity @e[type=minecraft:interaction, tag=as_selected_interaction, sort=nearest, limit=1] UUID[0]
execute store result score #uuid_matcher2 as_uuid2 run data get entity @e[type=minecraft:interaction, tag=as_selected_interaction, sort=nearest, limit=1] UUID[1]
execute store result score #uuid_matcher2 as_uuid3 run data get entity @e[type=minecraft:interaction, tag=as_selected_interaction, sort=nearest, limit=1] UUID[2]
execute store result score #uuid_matcher2 as_uuid4 run data get entity @e[type=minecraft:interaction, tag=as_selected_interaction, sort=nearest, limit=1] UUID[3]
execute if score #uuid_matcher1 as_uuid1 = #uuid_matcher2 as_uuid1 if score #uuid_matcher1 as_uuid2 = #uuid_matcher2 as_uuid2 if score #uuid_matcher1 as_uuid3 = #uuid_matcher2 as_uuid3 if score #uuid_matcher1 as_uuid4 = #uuid_matcher2 as_uuid4 run tag @e[type=minecraft:interaction, tag=as_selected_interaction, sort=nearest, limit=1] add as_last_used
#
# Stores last interaction to wand
#
execute as @e[type=minecraft:interaction, tag=as_selected_interaction, sort=nearest, limit=1] run item modify entity @p[tag=as_selected] weapon.mainhand armor_statues:wand
#
# pointing wand interaction
#
execute as @s[predicate=armor_statues:holding_pointer] run function armor_statues:interactions/interact_pointer
#
# adjustment wand interaction
#
execute as @s[predicate=armor_statues:holding_adjustment] run function armor_statues:interactions/interact_adjust
# Resets interaction
execute as @e[type=minecraft:interaction, tag=as_selected_interaction] run function armor_statues:interactions/reset_interaction
#execute as @e[type=minecraft:interaction, distance=..6, nbt={attack:{}}] run function armor_statues:interactions/reset_interaction
scoreboard players set @e[tag=as_selected] as_trigger 0
scoreboard players enable @s as_trigger
# resets tags
tag @e[tag=as_selected] remove as_selected
tag @e[type=minecraft:interaction, tag=as_last_used] remove as_last_used
tag @e[type=minecraft:interaction, tag=as_selected_interaction] remove as_selected_interaction
# Resets advancement
advancement revoke @s only armor_statues:use_interaction