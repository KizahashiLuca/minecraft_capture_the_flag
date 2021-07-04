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
clear @a[predicate=mcf:common/player]
## Set experience
experience set @a[predicate=mcf:common/player] 0 levels
experience set @a[predicate=mcf:common/player] 0 points
## Set effect
effect clear @a[predicate=mcf:common/player]
effect give @a[predicate=mcf:common/player] minecraft:resistance 1000000 6 true
effect give @a[predicate=mcf:common/player] minecraft:slow_falling 1000000 3 true
effect give @a[predicate=mcf:common/player] minecraft:invisibility 1000000 1 true
## Set advancements
advancement revoke @a everything
## Take recipes
recipe take @a *