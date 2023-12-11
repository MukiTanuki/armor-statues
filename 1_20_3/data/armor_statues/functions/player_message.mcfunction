#
# Description:	outputs messages to player via title or tellraw depending on .
# Called by:	
# Entity @s:	player
# Parameters:
#   message (str): Output message for
#
$execute as @s[tag=!as_chat] run title @s actionbar [\
    $(message)\
]
$execute as @s[tag=as_chat] run tellraw @s [\
    {\
        "text":"<Stick_God> ",\
        "color":"dark_green"\
    },\
    $(message)\
]