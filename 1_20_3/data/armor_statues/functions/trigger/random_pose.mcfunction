# 
# Description:	Randomizes armor stand pose
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
data modify storage armor_statues:pose_storage Pose set value {Head:[0.0f,0.001f,0.0f], Body:[0.0f,0.001f,0.0f], LeftArm:[-10.0f,0.001f,-10.0f], RightArm:[-15.0f,0.001f,10.0f], LeftLeg:[-1.0f,0.001f,-1.0f], RightLeg:[1.0f,0.001f,1.0f]}
#
# Generate randomizers
#
function armor_statues:randomizer/head
function armor_statues:randomizer/body
function armor_statues:randomizer/left_arm
function armor_statues:randomizer/right_arm
function armor_statues:randomizer/left_leg
function armor_statues:randomizer/right_leg
#
#
# Sets random pose
#
data modify entity @s Pose set from storage armor_statues:pose_storage Pose
#
# Kills temp armor stand
#
#kill @e[type=armor_stand,tag=as_temp_armor_stand]
#
# Tag the armor stand as modified
#
tag @s add as_modified