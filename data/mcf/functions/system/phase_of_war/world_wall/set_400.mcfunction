#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -200 to -150 / from 150 to 200
forceload add ~-200 ~ ~-150 ~
clone ~-200 1 ~1 ~-150 255 ~1 ~-200 1 ~ replace
forceload add ~150 ~ ~200 ~
clone ~150 1 ~1 ~200 255 ~1 ~150 1 ~ replace