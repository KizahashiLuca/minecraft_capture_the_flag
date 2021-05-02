#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -850 to -800 / from 800 to 850
forceload add ~-850 ~ ~-800 ~
clone ~-850 1 ~1 ~-800 255 ~1 ~-850 1 ~ replace
forceload add ~800 ~ ~850 ~
clone ~800 1 ~1 ~850 255 ~1 ~800 1 ~ replace