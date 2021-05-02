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
clear @a[tag=MCF_Player]
## Set experience
experience set @a[tag=MCF_Player] 0 levels
experience set @a[tag=MCF_Player] 0 points
## Set effect
effect clear @a[tag=MCF_Player]
effect give @a[tag=MCF_Player] minecraft:resistance 1000000 6 true
effect give @a[tag=MCF_Player] minecraft:slow_falling 1000000 3 true
effect give @a[tag=MCF_Player] minecraft:invisibility 1000000 1 true
## Set advancements
advancement revoke @a everything
## Take recipes
recipe take @a *