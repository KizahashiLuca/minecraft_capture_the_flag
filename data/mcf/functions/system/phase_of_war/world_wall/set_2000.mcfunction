#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -1000 to -950 / from 950 to 1000
forceload add ~-1000 ~ ~-950 ~
clone ~-1000 1 ~1 ~-950 255 ~1 ~-1000 1 ~ replace
forceload add ~950 ~ ~1000 ~
clone ~950 1 ~1 ~1000 255 ~1 ~950 1 ~ replace