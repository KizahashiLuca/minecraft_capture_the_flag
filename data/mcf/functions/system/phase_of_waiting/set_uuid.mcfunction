#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set scoreboard
execute store result score @s PlayerUUID0 run data get entity @s UUID[0]
execute store result score @s PlayerUUID1 run data get entity @s UUID[1]
execute store result score @s PlayerUUID2 run data get entity @s UUID[2]
execute store result score @s PlayerUUID3 run data get entity @s UUID[3]