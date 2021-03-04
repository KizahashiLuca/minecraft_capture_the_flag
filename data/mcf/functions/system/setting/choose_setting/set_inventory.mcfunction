#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set inventory
loot replace entity @p[tag=MCF_Host] inventory.3 loot mcf:setting/choose_setting/choose_phase_of_preparation_time
loot replace entity @p[tag=MCF_Host] inventory.4 loot mcf:setting/choose_setting/choose_phase_of_war_time
loot replace entity @p[tag=MCF_Host] inventory.5 loot mcf:setting/choose_setting/choose_team_setting
loot replace entity @p[tag=MCF_Host] inventory.12 loot mcf:setting/choose_setting/choose_gamerule
loot replace entity @p[tag=MCF_Host] inventory.13 loot mcf:setting/choose_setting/choose_difficulty
loot replace entity @p[tag=MCF_Host] inventory.14 loot mcf:setting/choose_setting/choose_world_border
loot replace entity @p[tag=MCF_Host] inventory.19 loot mcf:setting/choose_setting/cancel_game
loot replace entity @p[tag=MCF_Host] inventory.25 loot mcf:setting/choose_setting/start_game