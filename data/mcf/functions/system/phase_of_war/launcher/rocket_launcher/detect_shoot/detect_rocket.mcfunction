#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Detect firework_rocket
execute store result score @s PlayerUUID0 run data get entity @s Owner[0]
execute store result score @s PlayerUUID1 run data get entity @s Owner[1]
execute store result score @s PlayerUUID2 run data get entity @s Owner[2]
execute store result score @s PlayerUUID3 run data get entity @s Owner[3]

execute if score @p[tag=MCF_RocketShooter] PlayerUUID0 = @s PlayerUUID0 if score @p[tag=MCF_RocketShooter] PlayerUUID1 = @s PlayerUUID1 if score @p[tag=MCF_RocketShooter] PlayerUUID2 = @s PlayerUUID2 if score @p[tag=MCF_RocketShooter] PlayerUUID3 = @s PlayerUUID3 run tag @s add MCF_IgnitingRocket