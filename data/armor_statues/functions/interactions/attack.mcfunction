#
# Description:	Adjust armor stand pose
# Called by:	advancement: armor_statues:attack_interaction
# Entity @s:	player
#
# tag setup
tag @s add as_selected
tag @e[type=minecraft:interaction, distance=..6, nbt={attack:{}}, tag=as_interactable] add as_selected_interaction
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
# pointing wand interaction
#
execute as @s[predicate=armor_statues:holding_pointer] run function armor_statues:interactions/attack_pointer
#
# adjust wand interaction
#
execute as @s[predicate=armor_statues:holding_adjustment] run function armor_statues:interactions/attack_adjust
# Resets interaction
execute as @e[type=minecraft:interaction, tag=as_selected_interaction] run function armor_statues:interactions/reset_interaction
#execute as @e[type=minecraft:interaction, distance=..6, nbt={attack:{}}] run function armor_statues:interactions/reset_interaction
scoreboard players set @s as_trigger 0
scoreboard players enable @s as_trigger
# resets tags
tag @e[tag=as_selected] remove as_selected
tag @e[type=minecraft:interaction, tag=as_selected_interaction] remove as_selected_interaction
# Resets advancement
advancement revoke @s only armor_statues:attack_interaction