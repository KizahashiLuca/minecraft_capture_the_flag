#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Add 10secs
scoreboard players add #mcf TimeOfPrepare 10
execute if score #mcf TimeOfPrepare matches 1000.. run scoreboard players remove #mcf TimeOfPrepare 1000
function mcf:system/setting/choose_phase_of_preparation_time/change_to