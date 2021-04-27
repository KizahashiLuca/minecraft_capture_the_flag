#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Add a tag
tag @s add MCF_DetectRocket

## Detect ignited firework_rocket
scoreboard players set @e[tag=MCF_DetectRocket,limit=1] NotExplosive 0

execute as @e[type=minecraft:firework_rocket,tag=MCF_IgnitedRocket] if score @s RocketUUID0 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID0 if score @s RocketUUID1 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID1 if score @s RocketUUID2 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID2 if score @s RocketUUID3 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID3 run scoreboard players set @e[tag=MCF_DetectRocket,limit=1] NotExplosive 1
execute as @e[tag=MCF_DetectRocket,scores={NotExplosive=0},limit=1] run summon minecraft:tnt ~ ~ ~
execute if score @e[tag=MCF_DetectRocket,limit=1] NotExplosive matches 1 as @e[type=minecraft:firework_rocket,tag=MCF_IgnitedRocket] if score @s RocketUUID0 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID0 if score @s RocketUUID1 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID1 if score @s RocketUUID2 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID2 if score @s RocketUUID3 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID3 at @s run function mcf:system/phase_of_war/rocket_launcher/teleport_cloud

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MCF_DetectRocket]