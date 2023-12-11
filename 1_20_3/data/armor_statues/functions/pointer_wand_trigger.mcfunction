# 
# Description:	trigger for crafting pointer wand
# Called by:	armor_statues:second
# Entity @s:	player
#
# Checks if wands are disabled
#
execute if score #wands_disabled as_angle matches 1 run function armor_statues:player_message {\
    message: '{\
        "text":"Wands must be enabled",\
        "color":"dark_red"\
    }'\
}
execute if score #wands_disabled as_angle matches 1 run scoreboard players set @s pointer_wand 0
execute if score #wands_disabled as_angle matches 1 run return fail
# Checks if player already has a wand
execute if data entity @s Inventory[{id:"minecraft:stick", tag:{wand:1} }] run title @s actionbar [{"text":"You already have a Pointer Wand!","color": "red"}]
execute if data entity @s Inventory[{id:"minecraft:stick", tag:{wand:1} }] run scoreboard players set @s pointer_wand 0
# Checks if player has an item for wand
execute unless data entity @s[scores={pointer_wand=1..}] Inventory[{id:"minecraft:stick"}] run title @s actionbar [{"text":"Must have a ","color":"red"},{"translate":"item.minecraft.stick","color":"yellow"},{"color":"red","text":" in Inventory"}]
execute unless data entity @s[scores={pointer_wand=1..}] Inventory[{id:"minecraft:stick"}] run scoreboard players set @s pointer_wand 0
#
clear @s[scores={pointer_wand=1..}] minecraft:stick 1
loot give @s[scores={pointer_wand=1..}] loot armor_statues:pointer_wand
# reset trigger
scoreboard players set @s pointer_wand 0
scoreboard players enable @s pointer_wand