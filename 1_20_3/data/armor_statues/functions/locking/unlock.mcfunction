#
# Description:	Unlocks locked armor stand
# Called by:	armor_statues:trigger/lock
# Entity @s:	nearest locked armor stand
#
execute as @p[tag=as_selected] run function armor_statues:player_message {\
    message: '{\
        "text": "Armor stand unlocked",\
        "color": "dark_green"\
    }'\
}
execute if entity @p[tag=as_selected] run effect give @s minecraft:glowing 1
data merge entity @s {DisabledSlots:0}
tag @s remove as_locked
# removes tag for tool rack if present
tag @s[tag=as_tool_rack] remove as_tool_rack
#
# add Player UUID lock
#
scoreboard players reset @s as_lock_uuid1
scoreboard players reset @s as_lock_uuid2
scoreboard players reset @s as_lock_uuid3
scoreboard players reset @s as_lock_uuid4
tag @s remove as_uuid_locked