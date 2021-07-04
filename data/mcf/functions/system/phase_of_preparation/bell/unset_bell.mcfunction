#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Kill bell
kill @e[predicate=mcf:phase_of_preparation/bell/bell_drop,sort=nearest,limit=1]

## Spawn banner
execute as @s[tag=MCF_TeamA] at @s run loot spawn ~ ~ ~ loot mcf:phase_of_preparation/items/bell_team_a
execute as @s[tag=MCF_TeamB] at @s run loot spawn ~ ~ ~ loot mcf:phase_of_preparation/items/bell_team_b

## Kill cloud
kill @s