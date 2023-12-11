# 
# Description:	Randomizes appendage rotation
# Called by:	armor_statues:trigger/random_pose
# Entity @s:	temp armor stand
#
execute store result storage armor_statues:pose_storage Pose.RightArm[0] float 0.001 run random value -180000..180000
execute store result storage armor_statues:pose_storage Pose.RightArm[1] float 0.001 run random value -180000..180000
execute store result storage armor_statues:pose_storage Pose.RightArm[2] float 0.001 run random value -180000..180000