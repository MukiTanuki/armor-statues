#
# Description:	Applys the last repeated trigger score to players score
# Called by:	armor_statues:second
# Entity @s:	player
#
execute as @s run function armor_statues:storage_in
#
# Copies score from book to as_trigger
# 
execute store result score @s as_trigger run data get storage customizable_armor_stands:book_storage SavedItem.tag.Repeat
#
# Reset player's trigger score and re-enable
#
scoreboard players set @s as_repeat 0
scoreboard players enable @s as_repeat