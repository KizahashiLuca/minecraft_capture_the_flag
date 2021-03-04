#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Add a tag
tag @a[tag=Participant] add NotSetTeam

## Change to team member
execute if score #mcf SetTeamManual matches 0 run function mcf:system/setting/team_member_setting/random_member_set
execute if score #mcf SetTeamManual matches 1 run function mcf:system/setting/team_member_setting/change_to
