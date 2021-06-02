#
# Description:	Copies stored book from storage into mainhand or offhand
# Called by:	as_statue:trigger\copy
# Entity @s:	player
#
# Copies data from storage to the players book
#
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book", tag:{datapack:"ArmorStatuesV2"}}}] as @e[tag=as_temp, type=minecraft:pig, limit=1,sort=nearest] run item modify entity @s weapon.mainhand armor_statues:storage_out
execute if entity @s[nbt={Inventory:[{id:"minecraft:written_book", Slot:-106b, tag:{datapack:"ArmorStatuesV2"}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:written_book", tag:{datapack:"ArmorStatuesV2"}}}] as @e[tag=as_temp, type=minecraft:pig, sort=nearest, limit=1] run item modify entity @s weapon.offhand armor_statues:storage_out