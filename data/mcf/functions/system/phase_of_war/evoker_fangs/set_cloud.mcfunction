#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set owner uuid
data modify entity @s Owner set from entity @p[tag=MCF_EvokerFangs] UUID
## Set rotation
data modify entity @s Rotation set from entity @p[tag=MCF_EvokerFangs] Rotation
## Set scoreboard
scoreboard players set @s EvokerFangsCount 0