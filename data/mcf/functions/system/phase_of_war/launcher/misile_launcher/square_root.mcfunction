#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set square root
scoreboard players operation @s SqrtVarX += @s SqrtVarI
scoreboard players add @s SqrtXYZ 1
scoreboard players add @s SqrtVarI 2
execute if score @s NormXYZ > @s SqrtVarX run function mcf:system/phase_of_war/launcher/misile_launcher/square_root