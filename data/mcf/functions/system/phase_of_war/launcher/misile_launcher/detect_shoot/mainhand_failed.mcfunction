#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Replace item
loot replace entity @s weapon.mainhand loot mcf:phase_of_preparation/items/misile_launcher

## Play sound
playsound entity.armor_stand.break player @a ~ ~ ~ 1.0 1.0

## Add a tag
tag @s add MCF_MisileShooter

## Detect firework_rocket
execute as @e[type=minecraft:firework_rocket,tag=!MCF_IgnitedMisile] run function mcf:system/phase_of_war/launcher/misile_launcher/detect_shoot/detect_misile

## Kill firework_rocket
kill @e[type=minecraft:firework_rocket,tag=MCF_IgnitingMisile]

## Set scoreboard
function mcf:system/phase_of_war/launcher/misile_launcher/find_target/reset_target

## Remove a tag
tag @s remove MCF_MisileShooter