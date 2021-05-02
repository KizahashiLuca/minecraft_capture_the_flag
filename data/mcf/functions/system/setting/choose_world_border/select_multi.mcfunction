#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## No add
scoreboard players add #mcf WorldBorder 0
execute if score #mcf WorldBorder matches 2001.. run scoreboard players set #mcf WorldBorder 0
function mcf:system/setting/choose_world_border/change_to