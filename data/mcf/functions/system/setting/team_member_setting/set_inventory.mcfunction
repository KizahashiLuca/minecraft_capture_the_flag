#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set inventory
loot replace entity @p[tag=MCF_Host] inventory.12 loot mcf:team_member_setting/host_inventory/team_a
loot replace entity @p[tag=MCF_Host] inventory.14 loot mcf:team_member_setting/host_inventory/team_b

loot replace entity @p[tag=MCF_Host] hotbar.3 loot mcf:team_member_setting/host_inventory/team_a
loot replace entity @p[tag=MCF_Host] hotbar.5 loot mcf:team_member_setting/host_inventory/team_b

loot replace entity @p[tag=MCF_Host] inventory.19 loot mcf:setting/common/cancel
loot replace entity @p[tag=MCF_Host] inventory.22 loot mcf:setting/common/reset
loot replace entity @p[tag=MCF_Host] inventory.25 loot mcf:setting/common/determine

## Set nether_star above selected time limit
loot replace entity @p[tag=MCF_Host,team=TeamA] inventory.3 loot mcf:team_member_setting/host_inventory/nether_star_team_a
loot replace entity @p[tag=MCF_Host,team=TeamB] inventory.5 loot mcf:team_member_setting/host_inventory/nether_star_team_b

loot replace entity @p[tag=MCF_Host,team=TeamA] armor.head loot mcf:team_member_setting/player_head/team_a
loot replace entity @p[tag=MCF_Host,team=TeamB] armor.head loot mcf:team_member_setting/player_head/team_b