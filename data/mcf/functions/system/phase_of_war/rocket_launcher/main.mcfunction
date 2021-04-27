#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set scoreboard
execute as @s[scores={UseCrossbow=1..},nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[],Unbreakable:1b,Charged:0b,Tags:["MCFitem","MCF_RocketLauncher"]}}}] run function mcf:system/phase_of_war/rocket_launcher/mainhand
execute as @s[scores={UseCrossbow=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[],Unbreakable:1b,Charged:0b,Tags:["MCFitem","MCF_RocketLauncher"]}}]}] run function mcf:system/phase_of_war/rocket_launcher/offhand
