#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -500 to -450 / from 450 to 500
forceload add ~-500 ~ ~-450 ~
fill ~-500 1 ~ ~-450 255 ~ minecraft:bedrock
forceload add ~450 ~ ~500 ~
fill ~450 1 ~ ~500 255 ~ minecraft:bedrock