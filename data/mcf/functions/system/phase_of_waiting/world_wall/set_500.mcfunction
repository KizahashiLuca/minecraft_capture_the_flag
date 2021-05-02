#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -250 to -200 / from 200 to 250
forceload add ~-250 ~ ~-200 ~
fill ~-250 1 ~ ~-200 255 ~ minecraft:bedrock
forceload add ~200 ~ ~250 ~
fill ~200 1 ~ ~250 255 ~ minecraft:bedrock