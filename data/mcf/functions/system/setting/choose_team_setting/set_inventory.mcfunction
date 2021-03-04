#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set inventory
loot replace entity @p[tag=MCF_Host] inventory.10 loot mcf:setting/choose_team_setting/friendly_fire
loot replace entity @p[tag=MCF_Host] inventory.11 loot mcf:setting/choose_team_setting/collision_rule
loot replace entity @p[tag=MCF_Host] inventory.12 loot mcf:setting/choose_team_setting/nametag_visibility
loot replace entity @p[tag=MCF_Host] inventory.13 loot mcf:setting/choose_team_setting/see_friendly_invisibles
loot replace entity @p[tag=MCF_Host] inventory.14 loot mcf:setting/choose_team_setting/death_message_visibility
loot replace entity @p[tag=MCF_Host] inventory.16 loot mcf:setting/choose_team_setting/set_team_member_manual

loot replace entity @p[tag=MCF_Host] inventory.19 loot mcf:setting/common/cancel
loot replace entity @p[tag=MCF_Host] inventory.22 loot mcf:setting/common/reset
loot replace entity @p[tag=MCF_Host] inventory.25 loot mcf:setting/common/determine

## Set nether_star above selected time limit
execute if score #mcf friendlyFire matches 0 run loot replace entity @p[tag=MCF_Host] inventory.1 loot mcf:setting/common/off
execute if score #mcf friendlyFire matches 1 run loot replace entity @p[tag=MCF_Host] inventory.1 loot mcf:setting/common/on

execute if score #mcf collisionRule matches 0 run loot replace entity @p[tag=MCF_Host] inventory.2 loot mcf:setting/common/off
execute if score #mcf collisionRule matches 1 run loot replace entity @p[tag=MCF_Host] inventory.2 loot mcf:setting/common/on

execute if score #mcf VisibleName matches 0 run loot replace entity @p[tag=MCF_Host] inventory.3 loot mcf:setting/common/off
execute if score #mcf VisibleName matches 1 run loot replace entity @p[tag=MCF_Host] inventory.3 loot mcf:setting/common/on

execute if score #mcf VisibleInvis matches 0 run loot replace entity @p[tag=MCF_Host] inventory.4 loot mcf:setting/common/off
execute if score #mcf VisibleInvis matches 1 run loot replace entity @p[tag=MCF_Host] inventory.4 loot mcf:setting/common/on

execute if score #mcf VisibleDeath matches 0 run loot replace entity @p[tag=MCF_Host] inventory.5 loot mcf:setting/common/off
execute if score #mcf VisibleDeath matches 1 run loot replace entity @p[tag=MCF_Host] inventory.5 loot mcf:setting/common/on

execute if score #mcf SetTeamManual matches 0 run loot replace entity @p[tag=MCF_Host] inventory.7 loot mcf:setting/common/off
execute if score #mcf SetTeamManual matches 1 run loot replace entity @p[tag=MCF_Host] inventory.7 loot mcf:setting/common/on