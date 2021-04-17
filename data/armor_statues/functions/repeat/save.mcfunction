#
# Description:	Copies last function to book
# Called by:	as_statue:trigger
# Entity @s:	player
#
execute as @s run function armor_statues:storage_in
#
execute store result storage customizable_armor_stands:book_storage SavedItem.tag.Repeat int 1 run scoreboard players get @p[tag=as_selected] as_trigger
#
# Undo states
#
execute unless score @s as_trigger matches 1000..1004 unless score @s as_trigger matches 161..162 unless score @s as_trigger matches 120..123 unless score @s as_trigger matches 155 if entity @e[type=armor_stand,tag=as_selected] if score #undo_states as_angle matches 1.. run function armor_statues:repeat/save_state
#
execute as @s run function armor_statues:storage_out
