#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -100 to -50 / from 50 to 100
forceload add ~-100 ~ ~-50 ~
fill ~-100 1 ~ ~-50 255 ~ minecraft:bedrock
forceload add ~50 ~ ~100 ~
fill ~50 1 ~ ~100 255 ~ minecraft:bedrock