#
# Description:	Create scoreboards
# Called by:	#main:init
# Entity @s:	None
#
# Create scoreboards
#
scoreboard objectives add as_trigger trigger
scoreboard objectives add as_pose dummy
scoreboard objectives add as_angle dummy
scoreboard objectives add as_help trigger
scoreboard objectives add if_invisible trigger
scoreboard objectives add as_repeat trigger
scoreboard objectives add pointer_wand trigger
scoreboard objectives add adjustment_wand trigger
scoreboard objectives add as_edited_uuid1 dummy
scoreboard objectives add as_edited_uuid2 dummy
scoreboard objectives add as_edited_uuid3 dummy
scoreboard objectives add as_edited_uuid4 dummy
scoreboard objectives add as_lock_uuid1 dummy
scoreboard objectives add as_lock_uuid2 dummy
scoreboard objectives add as_lock_uuid3 dummy
scoreboard objectives add as_lock_uuid4 dummy
scoreboard objectives add as_uuid1 dummy
scoreboard objectives add as_uuid2 dummy
scoreboard objectives add as_uuid3 dummy
scoreboard objectives add as_uuid4 dummy
scoreboard objectives add as_current_pose dummy
scoreboard objectives add as_wand_used minecraft.used:minecraft.warped_fungus_on_a_stick
#
# Resets triggers on reload
#
scoreboard players enable * as_trigger
scoreboard players enable * as_help
scoreboard players enable * if_invisible
scoreboard players enable * as_repeat
scoreboard players enable * pointer_wand
scoreboard players enable * adjustment_wand
#
# Variables
#
scoreboard players set #var15000 as_angle 15000
scoreboard players set #var45000 as_angle 45000
scoreboard players set #var30000 as_angle 30000
scoreboard players set #var60000 as_angle 60000
scoreboard players set #var90000 as_angle 90000
scoreboard players set #var180000 as_angle 180000
scoreboard players set #var360000 as_angle 360000
scoreboard players set #var-1 as_angle -1
#
# Admin settings
#
execute unless score #book_uncraftable as_angle matches 0..1 run scoreboard players set #book_uncraftable as_angle 0
execute unless score #help_craftable as_angle matches 0..1 run scoreboard players set #help_craftable as_angle 0
execute unless score #fixing_enabled as_angle matches 0..1 run scoreboard players set #fixing_enabled as_angle 0
execute unless score #uuid_locking as_angle matches 0..1 run scoreboard players set #uuid_locking as_angle 0
execute unless score #wands_disabled as_angle matches 0..1 run scoreboard players set #wands_disabled as_angle 0
execute unless score #pointer_craftable as_angle matches 0..1 run scoreboard players set #pointer_craftable as_angle 1
execute unless score #adjustment_craftable as_angle matches 0..1 run scoreboard players set #adjustment_craftable as_angle 1
execute unless score #pointer_triggerable as_angle matches 0..1 run scoreboard players set #pointer_triggerable as_angle 1
execute unless score #adjustment_triggerable as_angle matches 0..1 run scoreboard players set #adjustment_triggerable as_angle 1
execute unless score #scale_min as_angle matches 63..1000 run scoreboard players set #scale_min as_angle 250
execute unless score #scale_max as_angle matches 1000..16000 run scoreboard players set #scale_max as_angle 3000
#
# Legacy settings
#
execute if data storage customizable_armor_stands:settings as_admin{book_craft:"Disabled"} run scoreboard players set #book_uncraftable as_angle 1
execute if data storage customizable_armor_stands:settings as_admin{book_craft:"Enabled"} run scoreboard players set #book_uncraftable as_angle 0
execute if data storage customizable_armor_stands:settings as_admin{book_help:"Disabled"} run scoreboard players set #help_craftable as_angle 0
execute if data storage customizable_armor_stands:settings as_admin{book_help:"Enabled"} run scoreboard players set #help_craftable as_angle 1
execute if data storage customizable_armor_stands:settings as_admin{fixed_item_frame:"Enabled"} run scoreboard players set #fixing_enabled as_angle 1
execute if data storage customizable_armor_stands:settings as_admin{fixed_item_frame:"Disabled"} run scoreboard players set #fixing_enabled as_angle 0
execute if data storage customizable_armor_stands:settings as_admin{uuid_lock:"Enabled"} run scoreboard players set #uuid_locking as_angle 1
execute if data storage customizable_armor_stands:settings as_admin{uuid_lock:"Disabled"} run scoreboard players set #uuid_locking as_angle 0
execute if data storage customizable_armor_stands:settings as_admin run data remove storage customizable_armor_stands:settings as_admin
#
# Storage cleanups on reload
#
data remove storage armor_statues:book_storage SavedItem
data remove storage armor_statues:appendage appendage
data remove storage armor_statues:book_data tag
data remove storage armor_statues:slot_storage Slot
data remove storage armor_statues:temp coord
data remove storage armor_statues:temp multiply
data remove storage armor_statues:temp matrix
data remove storage armor_statues:temp display_setup
data remove storage armor_statues:temp tp
data remove storage armor_statues:temp align
data remove storage armor_statues:temp scale
data remove storage armor_statues:uuid_check UUID
#
# Sets storage settings
#
execute unless score #undo_states as_angle matches 0.. run scoreboard players set #undo_states as_angle 10
execute unless score #animate_trigger as_angle matches 0.. run scoreboard players set #animate_trigger as_angle 0
# book nbt storage
data remove storage armor_statues:book_data components
function armor_statues:book_data