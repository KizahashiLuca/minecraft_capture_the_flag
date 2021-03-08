#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 100.. run function mcf:system/phase_of_war/world_wall/set_100
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 200.. run function mcf:system/phase_of_war/world_wall/set_200
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 300.. run function mcf:system/phase_of_war/world_wall/set_300
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 400.. run function mcf:system/phase_of_war/world_wall/set_400
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 500.. run function mcf:system/phase_of_war/world_wall/set_500
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 600.. run function mcf:system/phase_of_war/world_wall/set_600
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 700.. run function mcf:system/phase_of_war/world_wall/set_700
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 800.. run function mcf:system/phase_of_war/world_wall/set_800
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 900.. run function mcf:system/phase_of_war/world_wall/set_900
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1000.. run function mcf:system/phase_of_war/world_wall/set_1000
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1100.. run function mcf:system/phase_of_war/world_wall/set_1100
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1200.. run function mcf:system/phase_of_war/world_wall/set_1200
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1300.. run function mcf:system/phase_of_war/world_wall/set_1300
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1400.. run function mcf:system/phase_of_war/world_wall/set_1400
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1500.. run function mcf:system/phase_of_war/world_wall/set_1500
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1600.. run function mcf:system/phase_of_war/world_wall/set_1600
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1700.. run function mcf:system/phase_of_war/world_wall/set_1700
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1800.. run function mcf:system/phase_of_war/world_wall/set_1800
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1900.. run function mcf:system/phase_of_war/world_wall/set_1900
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 2000.. run function mcf:system/phase_of_war/world_wall/set_2000

## Set forceload
forceload remove all
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] align xyz run forceload add ~ ~