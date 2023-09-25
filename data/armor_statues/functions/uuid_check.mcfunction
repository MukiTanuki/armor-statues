#
# Description:	Checks to see if a UUID matches that of a given UUID of an entity.
# Called by:	as_statue:repeat/undo_redo
# Entity @s:	any
# Parameters:
#   UUID (list): a uuid to check against the entity.
#
$execute if data entity @s { UUID: $(UUID) } run return 1
return 0