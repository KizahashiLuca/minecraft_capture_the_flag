#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Log in the mid of the game - setting phase
#### Set tags
tag @s add MCF_Player
#### Set scoreboards
scoreboard players set @s Phase 0
scoreboard players set @s Death 0
scoreboard players set @s Kill 0
scoreboard players set @s KillTemp 0
#### Set gamemode
gamemode adventure @s
#### Set bossbars
bossbar set minecraft:bossbar players @s
#### Set inventory
clear @s
#### Set experience
experience set @s 0 levels
experience set @s 0 points
#### Set effect
effect clear @s
effect give @s minecraft:resistance 1000000 6 true
#### Set advancements
advancement revoke @s everything
#### Count number
function mcf:system/begin/count_number

