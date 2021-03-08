#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -650 to -600 / from 600 to 650
forceload add ~-650 ~ ~-600 ~
fill ~-650 1 ~ ~-600 255 ~ minecraft:bedrock
forceload add ~600 ~ ~650 ~
fill ~600 1 ~ ~650 255 ~ minecraft:bedrock