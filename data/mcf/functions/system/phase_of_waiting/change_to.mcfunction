#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Play sound
playsound minecraft:ui.button.click master @p[tag=MCF_Host] ~ ~ ~ 1 1 1

## Summon world spawn
execute at @p[tag=MCF_Host] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MCF_WorldSpawn"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
## Set forceload
forceload remove all
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] align xyz run forceload add ~ ~

## Set player
clear @a

## Set player number
scoreboard players set #mcf PlayerNumber 1
scoreboard players set @a[tag=MCF_Player] PlayerNumber 0
function mcf:system/phase_of_waiting/numbering
tag @a[tag=MCF_Player] remove MCF_Numbered

## Reset bossbar
bossbar remove minecraft:bossbar

## Set scoreboards
scoreboard players set #mcf Tick 20
scoreboard players set #mcf Second 5

## Change phase
scoreboard players set #mcf Phase 20