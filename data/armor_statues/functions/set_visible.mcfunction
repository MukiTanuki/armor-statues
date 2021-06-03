#
# Description:	Sets invisible armor stands to visible
# Called by:	armor_statues:3_second
# Entity @s:	armor stand
#
data merge entity @s {Invisible:0b}
tag @s remove as_invisible