#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall
execute if score #mcf Second matches 24 if score #mcf Tick matches 10 if score #mcf WorldBorder matches 100.. run function mcf:system/phase_of_waiting/world_wall/set_100
execute if score #mcf Second matches 24 if score #mcf Tick matches 0 if score #mcf WorldBorder matches 200.. run function mcf:system/phase_of_waiting/world_wall/set_200
execute if score #mcf Second matches 23 if score #mcf Tick matches 10 if score #mcf WorldBorder matches 300.. run function mcf:system/phase_of_waiting/world_wall/set_300
execute if score #mcf Second matches 23 if score #mcf Tick matches 0 if score #mcf WorldBorder matches 400.. run function mcf:system/phase_of_waiting/world_wall/set_400
execute if score #mcf Second matches 22 if score #mcf Tick matches 10 if score #mcf WorldBorder matches 500.. run function mcf:system/phase_of_waiting/world_wall/set_500
execute if score #mcf Second matches 22 if score #mcf Tick matches 0 if score #mcf WorldBorder matches 600.. run function mcf:system/phase_of_waiting/world_wall/set_600
execute if score #mcf Second matches 21 if score #mcf Tick matches 10 if score #mcf WorldBorder matches 700.. run function mcf:system/phase_of_waiting/world_wall/set_700
execute if score #mcf Second matches 21 if score #mcf Tick matches 0 if score #mcf WorldBorder matches 800.. run function mcf:system/phase_of_waiting/world_wall/set_800
execute if score #mcf Second matches 20 if score #mcf Tick matches 10 if score #mcf WorldBorder matches 900.. run function mcf:system/phase_of_waiting/world_wall/set_900
execute if score #mcf Second matches 20 if score #mcf Tick matches 0 if score #mcf WorldBorder matches 1000.. run function mcf:system/phase_of_waiting/world_wall/set_1000
execute if score #mcf Second matches 19 if score #mcf Tick matches 10 if score #mcf WorldBorder matches 1100.. run function mcf:system/phase_of_waiting/world_wall/set_1100
execute if score #mcf Second matches 19 if score #mcf Tick matches 0 if score #mcf WorldBorder matches 1200.. run function mcf:system/phase_of_waiting/world_wall/set_1200
execute if score #mcf Second matches 18 if score #mcf Tick matches 10 if score #mcf WorldBorder matches 1300.. run function mcf:system/phase_of_waiting/world_wall/set_1300
execute if score #mcf Second matches 18 if score #mcf Tick matches 0 if score #mcf WorldBorder matches 1400.. run function mcf:system/phase_of_waiting/world_wall/set_1400
execute if score #mcf Second matches 17 if score #mcf Tick matches 10 if score #mcf WorldBorder matches 1500.. run function mcf:system/phase_of_waiting/world_wall/set_1500
execute if score #mcf Second matches 17 if score #mcf Tick matches 0 if score #mcf WorldBorder matches 1600.. run function mcf:system/phase_of_waiting/world_wall/set_1600
execute if score #mcf Second matches 16 if score #mcf Tick matches 10 if score #mcf WorldBorder matches 1700.. run function mcf:system/phase_of_waiting/world_wall/set_1700
execute if score #mcf Second matches 16 if score #mcf Tick matches 0 if score #mcf WorldBorder matches 1800.. run function mcf:system/phase_of_waiting/world_wall/set_1800
execute if score #mcf Second matches 15 if score #mcf Tick matches 10 if score #mcf WorldBorder matches 1900.. run function mcf:system/phase_of_waiting/world_wall/set_1900
execute if score #mcf Second matches 15 if score #mcf Tick matches 0 if score #mcf WorldBorder matches 2000.. run function mcf:system/phase_of_waiting/world_wall/set_2000

## Set forceload
forceload remove all
execute align xyz run forceload add ~ ~