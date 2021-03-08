#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Random member set
execute as @p[tag=MCF_Player,tag=MCF_NotSetTeam,sort=random] run function mcf:system/setting/team_member_setting/set_team_random/team_a
execute as @p[tag=MCF_Player,tag=MCF_NotSetTeam,sort=random] run function mcf:system/setting/team_member_setting/set_team_random/team_b

execute unless entity @p[tag=MCF_Player,tag=MCF_NotSetTeam] run function mcf:system/phase_of_waiting/change_to
execute if entity @p[tag=MCF_Player,tag=MCF_NotSetTeam] run function mcf:system/setting/team_member_setting/random_member_set