#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set bell
setblock ~ ~ ~ minecraft:bell

## Summon cloud
execute as @s[tag=MCF_TeamA] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MCF_Bell","MCF_TeamA"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute as @s[tag=MCF_TeamB] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MCF_Bell","MCF_TeamB"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}

## Kill armor stand
kill @s