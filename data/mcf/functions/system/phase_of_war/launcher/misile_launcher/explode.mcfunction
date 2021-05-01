#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Explode
summon minecraft:tnt ~ ~ ~
scoreboard players set @p[tag=MCF_MisileShooter] PrvTargetUUID0 0
scoreboard players set @p[tag=MCF_MisileShooter] PrvTargetUUID1 0
scoreboard players set @p[tag=MCF_MisileShooter] PrvTargetUUID2 0
scoreboard players set @p[tag=MCF_MisileShooter] PrvTargetUUID3 0
scoreboard players set @p[tag=MCF_MisileShooter] TargetUUID0 1
scoreboard players set @p[tag=MCF_MisileShooter] TargetUUID1 1
scoreboard players set @p[tag=MCF_MisileShooter] TargetUUID2 1
scoreboard players set @p[tag=MCF_MisileShooter] TargetUUID3 1
scoreboard players set @p[tag=MCF_MisileShooter] TargetReset 1