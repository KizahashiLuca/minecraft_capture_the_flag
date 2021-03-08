#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Log in the mid of the game - setting phase
#### Set tags
tag @s remove MCF_Player
#### Set scoreboards
scoreboard players set @s Phase 0
scoreboard players set @s Death 0
scoreboard players set @s Kill 0
scoreboard players set @s KillTemp 0
#### Set gamemode
gamemode spectator @s
#### Set bossbars
bossbar set minecraft:bossbar players @s
#### Set inventory
clear @s
#### Set experience
experience set @s 0 levels
experience set @s 0 points
#### Set effect
effect clear @s
#### Set advancements
advancement revoke @s everything
#### Count number
function mcf:system/begin/count_number

