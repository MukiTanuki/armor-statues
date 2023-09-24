# 
# Description:	Randomizes appendage rotation
# Called by:	armor_statues:trigger/random_pose
# Entity @s:	temp armor stand
#
#execute store result score #x_angle as_angle run data get entity @s ArmorItems[3].tag.AttributeModifiers[{ "Name":"right_leg_x" }].Amount 1000
#execute store result score #y_angle as_angle run data get entity @s ArmorItems[3].tag.AttributeModifiers[{ "Name":"right_leg_y" }].Amount 1000
#execute store result score #z_angle as_angle run data get entity @s ArmorItems[3].tag.AttributeModifiers[{ "Name":"right_leg_z" }].Amount 1000
#function armor_statues:randomizer/right_leg_angle
#execute store result storage customizable_armor_stands:pose_storage Pose.RightLeg[0] float 0.001 run scoreboard players get #x_angle as_angle
#execute store result storage customizable_armor_stands:pose_storage Pose.RightLeg[1] float 0.001 run scoreboard players get #y_angle as_angle
#execute store result storage customizable_armor_stands:pose_storage Pose.RightLeg[2] float 0.001 run scoreboard players get #z_angle as_angle

# Sets angle type
scoreboard players set #random_type as_angle 0
execute if predicate armor_statues:random_chance_30 run scoreboard players set #random_type as_angle 1
execute if score #random_type as_angle matches 1 if predicate armor_statues:random_chance_50 run scoreboard players set #random_type as_angle 2
# small angle #random_type=0
execute if score #random_type as_angle matches 0 store result storage customizable_armor_stands:pose_storage Pose.RightLeg[0] float 0.001 run random value -45000..45000
execute if score #random_type as_angle matches 0 store result storage customizable_armor_stands:pose_storage Pose.RightLeg[1] float 0.001 run random value -45000..45000
execute if score #random_type as_angle matches 0 store result storage customizable_armor_stands:pose_storage Pose.RightLeg[2] float 0.001 run random value -45000..45000
# med angle #random_type=1
execute if score #random_type as_angle matches 1 store result storage customizable_armor_stands:pose_storage Pose.RightLeg[0] float 0.001 run random value -90000..90000
execute if score #random_type as_angle matches 1 store result storage customizable_armor_stands:pose_storage Pose.RightLeg[1] float 0.001 run random value -90000..90000
execute if score #random_type as_angle matches 1 store result storage customizable_armor_stands:pose_storage Pose.RightLeg[2] float 0.001 run random value -90000..90000
# extreme angle #random_type=2
execute if score #random_type as_angle matches 2 store result storage customizable_armor_stands:pose_storage Pose.RightLeg[0] float 0.001 run random value -180000..180000
execute if score #random_type as_angle matches 2 store result storage customizable_armor_stands:pose_storage Pose.RightLeg[1] float 0.001 run random value -180000..180000
execute if score #random_type as_angle matches 2 store result storage customizable_armor_stands:pose_storage Pose.RightLeg[2] float 0.001 run random value -180000..180000
# crossing reduction
scoreboard players set #no_crossing as_angle 0
execute if predicate armor_statues:random_chance_85 run scoreboard players set #no_crossing as_angle 1
# x
#execute if score #no_crossing as_angle matches 1 \
    store result score #angle as_angle run \
    data get storage customizable_armor_stands:pose_storage Pose.RightLeg[0]
#execute if score #no_crossing as_angle matches 1 \
    if score #angle as_angle matches 10000..170000 run \
    scoreboard players operation #angle as_angle -= #var180000 as_angle
#execute if score #no_crossing as_angle matches 1 \
    store result storage customizable_armor_stands:pose_storage Pose.RightLeg[0] float 0.001 run \
    scoreboard players get #angle as_angle
# y
execute if score #no_crossing as_angle matches 1 \
    store result score #angle as_angle run \
    data get storage customizable_armor_stands:pose_storage Pose.RightLeg[1]
execute if score #no_crossing as_angle matches 1 \
    if score #angle as_angle matches 10000..170000 run \
    scoreboard players operation #angle as_angle -= #var180000 as_angle
execute if score #no_crossing as_angle matches 1 \
    store result storage customizable_armor_stands:pose_storage Pose.RightLeg[1] float 0.001 run \
    scoreboard players get #angle as_angle
# z
execute if score #no_crossing as_angle matches 1 \
    store result score #angle as_angle run \
    data get storage customizable_armor_stands:pose_storage Pose.RightLeg[2]
execute if score #no_crossing as_angle matches 1 \
    if score #angle as_angle matches 10000..170000 run \
    scoreboard players operation #angle as_angle -= #var180000 as_angle
execute if score #no_crossing as_angle matches 1 \
    store result storage customizable_armor_stands:pose_storage Pose.RightLeg[2] float 0.001 run \
    scoreboard players get #angle as_angle