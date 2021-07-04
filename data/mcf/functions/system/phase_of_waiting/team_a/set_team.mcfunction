#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Add a tag
tag @p[predicate=mcf:common/player/team_a,sort=random] add MCF_Leader

## Set teamrule
function mcf:system/phase_of_waiting/team_a/set_rule
## Set scoreboard
function mcf:system/phase_of_waiting/team_a/set_scoreboard
## Set bossbar
function mcf:system/phase_of_waiting/team_a/set_bossbar
## Count player
function mcf:system/phase_of_waiting/team_a/count_player