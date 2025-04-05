#
# Description:	Exchange items between equipment slots
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Creates temporary storage
#
#data modify storage armor_statues:slot_storage {} set value {Slots:[{}, {}]}
#
# Copy item from main hand to temporary storage
#
data remove storage armor_statues:slot_storage Slot
data modify storage armor_statues:slot_storage Slot set from entity @s equipment.mainhand
data remove entity @s equipment.mainhand
#
# Copy item from off hand or head to main hand
#
execute if entity @s[scores={as_trigger=161}] run data modify entity @s equipment.mainhand set from entity @s equipment.offhand
execute if entity @s[scores={as_trigger=162}] run data modify entity @s equipment.mainhand set from entity @s equipment.head
#
# Copy item from temporary storage to off hand or head
#
execute if entity @s[scores={as_trigger=161}] run data remove entity @s equipment.offhand
execute if entity @s[scores={as_trigger=162}] run data remove entity @s equipment.head
execute if entity @s[scores={as_trigger=161}] run data modify entity @s equipment.offhand set from storage armor_statues:slot_storage Slot
execute if entity @s[scores={as_trigger=162}] run data modify entity @s equipment.head set from storage armor_statues:slot_storage Slot
