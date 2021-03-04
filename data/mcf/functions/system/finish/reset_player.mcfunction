#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Reset inventory
clear @a
## Reset experience
experience set @a 0 levels
experience set @a 0 points
## Reset effect
effect clear @a
## Reset advancements
advancement revoke @a everything