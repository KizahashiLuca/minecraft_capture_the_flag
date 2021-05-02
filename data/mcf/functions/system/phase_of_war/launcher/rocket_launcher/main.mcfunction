#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Add tags
tag @s add MCF_DetectRocket
execute as @e[type=minecraft:firework_rocket,tag=MCF_IgnitedRocket] if score @s RocketUUID0 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID0 if score @s RocketUUID1 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID1 if score @s RocketUUID2 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID2 if score @s RocketUUID3 = @e[tag=MCF_DetectRocket,limit=1] RocketUUID3 at @s run tag @s add MCF_DetectRocketExplode

## Detect ignited firework_rocket
scoreboard players set @e[tag=MCF_DetectRocket,limit=1] NotExplosive 0

## If firework rocket is alive, it will not explode
execute if entity @e[type=minecraft:firework_rocket,tag=MCF_DetectRocketExplode] run scoreboard players set @e[tag=MCF_DetectRocket,limit=1] NotExplosive 1

## If there are blocks at the end of firework rocket, it will explode
execute as @e[type=minecraft:firework_rocket,tag=MCF_DetectRocketExplode] at @s unless block ^ ^ ^-1 #mcf:air run scoreboard players set @e[tag=MCF_DetectRocket,limit=1] NotExplosive 0
execute as @e[type=minecraft:firework_rocket,tag=MCF_DetectRocketExplode] at @s unless block ^ ^ ^1 #mcf:air run scoreboard players set @e[tag=MCF_DetectRocket,limit=1] NotExplosive 0

## If shot player is near by, it will not explode
execute as @a[distance=..2] if score @e[tag=MCF_DetectRocketExplode,limit=1] PlayerUUID0 = @s PlayerUUID0 if score @e[tag=MCF_DetectRocketExplode,limit=1] PlayerUUID1 = @s PlayerUUID1 if score @e[tag=MCF_DetectRocketExplode,limit=1] PlayerUUID2 = @s PlayerUUID2 if score @e[tag=MCF_DetectRocketExplode,limit=1] PlayerUUID3 = @s PlayerUUID3 run scoreboard players set @e[tag=MCF_DetectRocket,limit=1] NotExplosive 1

## Kill firework rocket
execute as @e[tag=MCF_DetectRocket,scores={NotExplosive=0},limit=1] run kill @e[tag=MCF_DetectRocketExplode]

## Explode
execute as @e[tag=MCF_DetectRocket,scores={NotExplosive=0},limit=1] at @s run summon minecraft:tnt ~ ~ ~
execute as @e[tag=MCF_DetectRocket,scores={NotExplosive=0},limit=1] at @s run summon minecraft:tnt ~ ~ ~
execute as @e[tag=MCF_DetectRocket,scores={NotExplosive=0},limit=1] at @s run summon minecraft:tnt ~ ~ ~
execute as @e[tag=MCF_DetectRocket,scores={NotExplosive=0},limit=1] at @s run summon minecraft:tnt ~ ~ ~

## Teleport cloud
execute as @e[tag=MCF_DetectRocket,scores={NotExplosive=1},limit=1] at @e[tag=MCF_DetectRocketExplode,limit=1] run function mcf:system/phase_of_war/launcher/rocket_launcher/teleport_cloud

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MCF_DetectRocket]

## Remove a tag
tag @e[tag=MCF_DetectRocketExplode] remove MCF_DetectRocketExplode