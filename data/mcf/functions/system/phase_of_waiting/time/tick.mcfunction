#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Calculate time every second
execute if score #mcf Tick matches 0 run scoreboard players remove #mcf Second 1

## Calculate time every tick
execute if score #mcf Tick matches 0 run scoreboard players set #mcf Tick 20
execute if score #mcf Tick matches 1.. run scoreboard players remove #mcf Tick 1