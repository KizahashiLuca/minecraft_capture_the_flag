#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Replace item
replaceitem entity @s weapon.mainhand minecraft:air

## Play sound
playsound entity.item.break player @a ~ ~ ~ 1.0 1.0

## Add a tag
tag @s add MCF_RocketLauncher

## Detect firework_rocket
execute as @e[type=minecraft:firework_rocket,tag=!MCF_IgnitedRocket] run function mcf:system/phase_of_war/launcher/rocket_launcher/detect_shoot/detect_rocket
execute as @e[type=minecraft:firework_rocket,tag=MCF_IgnitingRocket] run function mcf:system/phase_of_war/launcher/rocket_launcher/detect_shoot/igniting_rocket

## Remove a tag
tag @s remove MCF_RocketLauncher