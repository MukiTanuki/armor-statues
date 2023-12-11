#
# Description:	Replace titled book with proper command book
# Called by:	advancement armor_statues:crafting
# Entity @s:	Player
#
# Tags the player to replace crafting book
#
execute unless score #book_uncraftable as_angle matches 1 run tag @s add as_craft