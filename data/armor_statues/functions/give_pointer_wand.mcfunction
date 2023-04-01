#
# Description:	gives player pointing wand
# Called by:	armor_statues:second
# Entity @s:	player
#
clear @s minecraft:stick{display:{Name:'{"text":"Statues"}'}} 1
loot give @s loot armor_statues:pointer_wand