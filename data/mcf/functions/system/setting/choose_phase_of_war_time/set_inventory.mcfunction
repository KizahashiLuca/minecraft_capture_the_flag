#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set inventory
loot replace entity @p[tag=MCF_Host] inventory.4 loot mcf:setting/choose_setting/choose_phase_of_war_time
loot replace entity @p[tag=MCF_Host] inventory.10 loot mcf:setting/number/digit_0100
loot replace entity @p[tag=MCF_Host] inventory.11 loot mcf:setting/number/digit_0010
loot replace entity @p[tag=MCF_Host] inventory.12 loot mcf:setting/number/digit_0001
loot replace entity @p[tag=MCF_Host] inventory.13 loot mcf:setting/number/alphabet_m
loot replace entity @p[tag=MCF_Host] inventory.14 loot mcf:setting/number/alphabet_i
loot replace entity @p[tag=MCF_Host] inventory.15 loot mcf:setting/number/alphabet_n
loot replace entity @p[tag=MCF_Host] inventory.16 loot mcf:setting/number/alphabet_dot
loot replace entity @p[tag=MCF_Host] inventory.19 loot mcf:setting/common/cancel
loot replace entity @p[tag=MCF_Host] inventory.22 loot mcf:setting/common/reset
execute if score #mcf TimeOfWar matches 1.. run loot replace entity @p[tag=MCF_Host] inventory.25 loot mcf:setting/common/determine