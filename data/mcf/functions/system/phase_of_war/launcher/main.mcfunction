#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Rocket Launcher
execute as @s[scores={UseCrossbow=1..},nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[],Unbreakable:1b,Charged:0b,Tags:["MCFitem","MCF_RocketLauncher"]}}}] run function mcf:system/phase_of_war/launcher/rocket_launcher/detect_shoot/mainhand
execute as @s[scores={UseCrossbow=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[],Unbreakable:1b,Charged:0b,Tags:["MCFitem","MCF_RocketLauncher"]}}]}] run function mcf:system/phase_of_war/launcher/rocket_launcher/detect_shoot/offhand

## Misile Launcher
execute as @s[scores={UseCrossbow=1..,TargetReset=0},nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[],Unbreakable:1b,Charged:0b,Tags:["MCFitem","MCF_MisileLauncher"]}}}] run function mcf:system/phase_of_war/launcher/misile_launcher/detect_shoot/mainhand_success
execute as @s[scores={UseCrossbow=1..,TargetReset=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[],Unbreakable:1b,Charged:0b,Tags:["MCFitem","MCF_MisileLauncher"]}}]}] run function mcf:system/phase_of_war/launcher/misile_launcher/detect_shoot/offhand_success
execute as @s[scores={UseCrossbow=1..,TargetReset=1..},nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[],Unbreakable:1b,Charged:0b,Tags:["MCFitem","MCF_MisileLauncher"]}}}] run function mcf:system/phase_of_war/launcher/misile_launcher/detect_shoot/mainhand_failed
execute as @s[scores={UseCrossbow=1..,TargetReset=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[],Unbreakable:1b,Charged:0b,Tags:["MCFitem","MCF_MisileLauncher"]}}]}] run function mcf:system/phase_of_war/launcher/misile_launcher/detect_shoot/offhand_failed

## Reset scoreboard
scoreboard players set @s UseCrossbow 0