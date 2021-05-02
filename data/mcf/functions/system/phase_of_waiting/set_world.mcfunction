#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world border
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] run worldborder center ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 100..500 run function mcf:system/phase_of_waiting/world_border/branch_100_500
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 600..1000 run function mcf:system/phase_of_waiting/world_border/branch_600_1000
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1100..1500 run function mcf:system/phase_of_waiting/world_border/branch_1100_1500
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] if score #mcf WorldBorder matches 1600..2000 run function mcf:system/phase_of_waiting/world_border/branch_1600_2000
## Reset world
time set 0
weather clear
## Kill entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:shulker]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:armor_stand,tag=MCF_items]
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s