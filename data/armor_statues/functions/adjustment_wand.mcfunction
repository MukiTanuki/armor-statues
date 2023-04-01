#
# Description:	adjusts wand type
# Called by:	armor_statues:second
# Entity @s:	player
#
scoreboard players set #wand_type as_angle 0
# gets current wand type
execute store result score #wand_type as_angle run data get entity @s SelectedItem.tag.type
# cycles and sets wand according to type
execute if score #wand_type as_angle matches 0 run item modify entity @s weapon.mainhand armor_statues:adjustment_wand_1
execute if score #wand_type as_angle matches 1 run item modify entity @s weapon.mainhand armor_statues:adjustment_wand_2
execute if score #wand_type as_angle matches 2 run item modify entity @s weapon.mainhand armor_statues:adjustment_wand_0
# sound
playsound minecraft:block.note_block.hat block @a ~ ~ ~ 0.5 1.5