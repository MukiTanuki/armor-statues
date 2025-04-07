#
# Description:	Exchange items between equipment slots
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Copy item from main hand to temporary storage
#
data modify storage armor_statues:slot_storage Slot set value {}
data modify storage armor_statues:slot_storage Slot set from entity @s equipment.mainhand
#
# Copy item from off hand or head to main hand
#
execute if entity @s[scores={as_trigger=161}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute if entity @s[scores={as_trigger=162}] run item replace entity @s weapon.mainhand from entity @s armor.head
#
# Copy item from temporary storage to off hand or head
#
execute if entity @s[scores={as_trigger=161}] if data storage armor_statues:slot_storage Slot.id run data modify entity @s equipment.offhand set from storage armor_statues:slot_storage Slot
execute if entity @s[scores={as_trigger=162}] if data storage armor_statues:slot_storage Slot.id run data modify entity @s equipment.head set from storage armor_statues:slot_storage Slot
# delet if no storage item present
execute if entity @s[scores={as_trigger=161}] unless data storage armor_statues:slot_storage Slot.id run item replace entity @s weapon.offhand with minecraft:air
execute if entity @s[scores={as_trigger=162}] unless data storage armor_statues:slot_storage Slot.id run item replace entity @s armor.head with minecraft:air