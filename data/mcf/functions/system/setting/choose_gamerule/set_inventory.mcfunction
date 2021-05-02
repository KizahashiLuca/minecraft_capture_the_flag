#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set inventory
loot replace entity @p[tag=MCF_Host] inventory.12 loot mcf:setting/choose_gamerule/weather_cycle
loot replace entity @p[tag=MCF_Host] inventory.13 loot mcf:setting/choose_gamerule/daylight_cycle
loot replace entity @p[tag=MCF_Host] inventory.14 loot mcf:setting/choose_gamerule/do_nightvision
loot replace entity @p[tag=MCF_Host] inventory.19 loot mcf:setting/common/cancel
loot replace entity @p[tag=MCF_Host] inventory.22 loot mcf:setting/common/reset
loot replace entity @p[tag=MCF_Host] inventory.25 loot mcf:setting/common/determine

## Set nether_star above selected time limit
execute if score #mcf WeatherCycle matches 0 run loot replace entity @p[tag=MCF_Host] inventory.3 loot mcf:setting/common/off
execute if score #mcf WeatherCycle matches 1 run loot replace entity @p[tag=MCF_Host] inventory.3 loot mcf:setting/common/on
execute if score #mcf DaylightCycle matches 0 run loot replace entity @p[tag=MCF_Host] inventory.4 loot mcf:setting/common/off
execute if score #mcf DaylightCycle matches 1 run loot replace entity @p[tag=MCF_Host] inventory.4 loot mcf:setting/common/on
execute if score #mcf DoNightVision matches 0 run loot replace entity @p[tag=MCF_Host] inventory.5 loot mcf:setting/common/off
execute if score #mcf DoNightVision matches 1 run loot replace entity @p[tag=MCF_Host] inventory.5 loot mcf:setting/common/on