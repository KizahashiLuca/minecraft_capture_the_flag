#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Detect firework_rocket
execute store result score @s PlayerUUID0 run data get entity @s Owner[0]
execute store result score @s PlayerUUID1 run data get entity @s Owner[1]
execute store result score @s PlayerUUID2 run data get entity @s Owner[2]
execute store result score @s PlayerUUID3 run data get entity @s Owner[3]

execute as @e[type=minecraft:firework_rocket,tag=!MCF_IgnitedMisile] if score @p[tag=MCF_MisileShooter] PlayerUUID0 = @s PlayerUUID0 if score @p[tag=MCF_MisileShooter] PlayerUUID1 = @s PlayerUUID1 if score @p[tag=MCF_MisileShooter] PlayerUUID2 = @s PlayerUUID2 if score @p[tag=MCF_MisileShooter] PlayerUUID3 = @s PlayerUUID3 run tag @s add MCF_IgnitingMisile

scoreboard players operation @e[tag=MCF_IgnitingMisile,limit=1] TargetUUID0 = @p[tag=MCF_MisileShooter] TargetUUID0
scoreboard players operation @e[tag=MCF_IgnitingMisile,limit=1] TargetUUID1 = @p[tag=MCF_MisileShooter] TargetUUID1
scoreboard players operation @e[tag=MCF_IgnitingMisile,limit=1] TargetUUID2 = @p[tag=MCF_MisileShooter] TargetUUID2
scoreboard players operation @e[tag=MCF_IgnitingMisile,limit=1] TargetUUID3 = @p[tag=MCF_MisileShooter] TargetUUID3