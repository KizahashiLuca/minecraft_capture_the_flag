#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -1000 to -950 / from 950 to 1000
forceload add ~-1000 ~ ~-950 ~
fill ~-1000 1 ~ ~-950 255 ~ minecraft:bedrock
forceload add ~950 ~ ~1000 ~
fill ~950 1 ~ ~1000 255 ~ minecraft:bedrock