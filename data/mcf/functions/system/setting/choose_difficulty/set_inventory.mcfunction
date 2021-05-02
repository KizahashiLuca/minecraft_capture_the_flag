#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set inventory
loot replace entity @p[tag=MCF_Host] inventory.12 loot mcf:setting/choose_difficulty/choose_easy
loot replace entity @p[tag=MCF_Host] inventory.13 loot mcf:setting/choose_difficulty/choose_normal
loot replace entity @p[tag=MCF_Host] inventory.14 loot mcf:setting/choose_difficulty/choose_hard
loot replace entity @p[tag=MCF_Host] inventory.19 loot mcf:setting/common/cancel
loot replace entity @p[tag=MCF_Host] inventory.25 loot mcf:setting/common/determine

## Set nether_star above selected difficulty
execute if score #mcf Difficulty matches 1 run loot replace entity @p[tag=MCF_Host] inventory.3 loot mcf:setting/common/selected
execute if score #mcf Difficulty matches 2 run loot replace entity @p[tag=MCF_Host] inventory.4 loot mcf:setting/common/selected
execute if score #mcf Difficulty matches 3 run loot replace entity @p[tag=MCF_Host] inventory.5 loot mcf:setting/common/selected