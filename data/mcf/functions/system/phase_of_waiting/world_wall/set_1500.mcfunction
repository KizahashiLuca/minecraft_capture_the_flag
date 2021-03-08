#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -750 to -700 / from 700 to 750
forceload add ~-750 ~ ~-700 ~
fill ~-750 1 ~ ~-700 255 ~ minecraft:bedrock
forceload add ~700 ~ ~750 ~
fill ~700 1 ~ ~750 255 ~ minecraft:bedrock