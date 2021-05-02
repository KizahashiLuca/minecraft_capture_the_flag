#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -650 to -600 / from 600 to 650
forceload add ~-650 ~ ~-600 ~
clone ~-650 1 ~1 ~-600 255 ~1 ~-650 1 ~ replace
forceload add ~600 ~ ~650 ~
clone ~600 1 ~1 ~650 255 ~1 ~600 1 ~ replace