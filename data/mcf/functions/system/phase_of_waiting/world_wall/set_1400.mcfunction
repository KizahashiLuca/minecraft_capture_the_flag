#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -700 to -650 / from 650 to 700
forceload add ~-700 ~ ~-650 ~
fill ~-700 1 ~ ~-650 255 ~ minecraft:bedrock
forceload add ~650 ~ ~700 ~
fill ~650 1 ~ ~700 255 ~ minecraft:bedrock