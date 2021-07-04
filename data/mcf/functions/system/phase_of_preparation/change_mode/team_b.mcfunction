#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Clear egg
clear @a[predicate=mcf:common/player/team_b] minecraft:bat_spawn_egg{Tags:["MCFitem"]}
## Change mode
gamemode adventure @a[predicate=mcf:common/player/team_b]
execute unless entity @e[predicate=mcf:common/banner/team_b] as @a[predicate=mcf:common/leader/team_b] at @s run function mcf:system/phase_of_preparation/banner/set_banner