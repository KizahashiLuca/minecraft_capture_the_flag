#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Summon fangs
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_EvokerFangs] at @s run summon minecraft:evoker_fangs ^ ^ ^1.5
## Set scoreboard
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=MCF_EvokerFangs] EvokerFangsCount 1
## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MCF_EvokerFangs,scores={EvokerFangsCount=16..}] 
## Teleport cloud
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_EvokerFangs] at @s run tp ^ ^ ^1.5
## Schedule function
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_EvokerFangs] run schedule function mcf:system/phase_of_war/evoker_fangs/set_fangs 1t append