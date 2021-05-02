#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -550 to -500 / from 500 to 550
forceload add ~-550 ~ ~-500 ~
clone ~-550 1 ~1 ~-500 255 ~1 ~-550 1 ~ replace
forceload add ~500 ~ ~550 ~
clone ~500 1 ~1 ~550 255 ~1 ~500 1 ~ replace