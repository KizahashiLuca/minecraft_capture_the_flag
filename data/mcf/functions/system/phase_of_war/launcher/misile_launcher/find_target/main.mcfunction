#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Add a tag
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Charged:1b,Tags:["MCFitem","MCF_MisileLauncher"]}}},scores={SneakTime=1..}] at @s run function mcf:system/phase_of_war/launcher/misile_launcher/find_target/set_target
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Charged:1b,Tags:["MCFitem","MCF_MisileLauncher"]}}]},scores={SneakTime=1..}] at @s run function mcf:system/phase_of_war/launcher/misile_launcher/find_target/set_target
execute as @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Charged:1b,Tags:["MCFitem","MCF_MisileLauncher"]}}]},nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Charged:1b,Tags:["MCFitem","MCF_MisileLauncher"]}}},scores={SneakTime=0}] at @s run function mcf:system/phase_of_war/launcher/misile_launcher/find_target/reset_target