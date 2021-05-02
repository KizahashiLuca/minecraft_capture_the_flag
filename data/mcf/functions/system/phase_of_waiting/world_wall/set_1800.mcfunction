#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -900 to -850 / from 850 to 900
forceload add ~-900 ~ ~-850 ~
fill ~-900 1 ~ ~-850 255 ~ minecraft:bedrock
forceload add ~850 ~ ~900 ~
fill ~850 1 ~ ~900 255 ~ minecraft:bedrock