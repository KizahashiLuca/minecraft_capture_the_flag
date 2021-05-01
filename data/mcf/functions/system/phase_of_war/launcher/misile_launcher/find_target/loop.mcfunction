#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Distance limit
execute unless block ~ ~ ~ #mcf:air run particle minecraft:dust 0.071 0.808 0.071 3 ~ ~ ~ 0 0 0 0 0 force @p[tag=MCF_DetectLockon]
execute unless block ~ ~ ~ #mcf:air run kill @e[type=minecraft:area_effect_cloud,tag=MCF_DetectLockon]

## Distance limit
execute unless entity @p[tag=MCF_DetectLockon,distance=..50] run particle minecraft:dust 0.071 0.808 0.071 3 ~ ~ ~ 0 0 0 0 0 force @p[tag=MCF_DetectLockon]
execute unless entity @p[tag=MCF_DetectLockon,distance=..50] run kill @e[type=minecraft:area_effect_cloud,tag=MCF_DetectLockon]

## Find target
execute if entity @p[tag=MCF_DetectLockon,distance=3..] if entity @e[type=!#mcf:not_mob,distance=..1.5,sort=nearest] as @p[tag=MCF_DetectLockon] run function mcf:system/phase_of_war/launcher/misile_launcher/find_target/found

## Add a tag
tag @s add MCF_NotFoundTarget

## Summon next cloud
execute if entity @e[type=minecraft:area_effect_cloud,tag=MCF_DetectLockon] if entity @p[tag=MCF_DetectLockon,distance=..50] run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["MCF_DetectLockon"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}

execute if entity @e[type=minecraft:area_effect_cloud,tag=MCF_DetectLockon] run data modify entity @e[type=minecraft:area_effect_cloud,tag=MCF_DetectLockon,tag=!MCF_NotFoundTarget,limit=1] Rotation set from entity @s Rotation

## Loop
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_DetectLockon,tag=!MCF_NotFoundTarget] at @s run function mcf:system/phase_of_war/launcher/misile_launcher/find_target/loop