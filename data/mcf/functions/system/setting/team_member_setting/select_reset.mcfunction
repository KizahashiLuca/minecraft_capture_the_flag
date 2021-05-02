#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Select team member setting
team leave @a
tag @a[tag=MCF_Player] add MCF_NotSetTeam

clear @a
team join TeamA @p[tag=MCF_Host]

function mcf:system/setting/team_member_setting/change_to