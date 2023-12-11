# 
# Description:	Randomizes appendage rotation
# Called by:	armor_statues:trigger/random_pose
# Entity @s:	temp armor stand
#
# Sets random angle type
scoreboard players set #random_type as_angle 0
execute if predicate armor_statues:random_chance_10 run scoreboard players set #random_type as_angle 1
execute if score #random_type as_angle matches 1 if predicate armor_statues:random_chance_30 run scoreboard players set #random_type as_angle 2
# small angle #random_type=0
execute if score #random_type as_angle matches 0 store result storage armor_statues:pose_storage Pose.Body[0] float 0.001 run random value -15000..15000
execute if score #random_type as_angle matches 0 store result storage armor_statues:pose_storage Pose.Body[1] float 0.001 run random value -15000..15000
execute if score #random_type as_angle matches 0 store result storage armor_statues:pose_storage Pose.Body[2] float 0.001 run random value -15000..15000
# med angle #random_type=1
execute if score #random_type as_angle matches 1 store result storage armor_statues:pose_storage Pose.Body[0] float 0.001 run random value -30000..30000
execute if score #random_type as_angle matches 1 store result storage armor_statues:pose_storage Pose.Body[1] float 0.001 run random value -30000..30000
execute if score #random_type as_angle matches 1 store result storage armor_statues:pose_storage Pose.Body[2] float 0.001 run random value -30000..30000
# extreme angle #random_type=2
execute if score #random_type as_angle matches 2 store result storage armor_statues:pose_storage Pose.Body[0] float 0.001 run random value -180000..180000
execute if score #random_type as_angle matches 2 store result storage armor_statues:pose_storage Pose.Body[1] float 0.001 run random value -180000..180000
execute if score #random_type as_angle matches 2 store result storage armor_statues:pose_storage Pose.Body[2] float 0.001 run random value -180000..180000