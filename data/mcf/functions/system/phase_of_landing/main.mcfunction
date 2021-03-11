#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Log in the mid of the game
function mcf:system/phase_of_landing/login_mid_game

## Set effect
execute if score #mcf DoNightVision matches 1 run effect give @a[tag=MCF_Player] minecraft:night_vision 1000000 1 true

## Detect onground
execute as @a[scores={OnGround=0},tag=MCF_Player] store result score @s OnGround run data get entity @s OnGround 1
execute as @a[scores={OnGround=0},tag=MCF_Player] at @s if block ~ ~ ~ minecraft:water if block ~ ~1 ~ minecraft:water run scoreboard players set @s OnGround 1
execute as @a[scores={OnGround=1},tag=MCF_Player] at @s run function mcf:system/phase_of_landing/teleporter

## Teleport
execute as @a[scores={OnGround=2},tag=MCF_Player] run function mcf:system/phase_of_landing/teleport

## Change phase
execute unless entity @p[scores={OnGround=0..1},tag=MCF_Player] run function mcf:system/phase_of_preparation/change_to