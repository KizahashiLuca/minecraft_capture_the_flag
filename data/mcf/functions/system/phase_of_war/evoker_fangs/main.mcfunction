#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set scoreboard
execute as @s[scores={UseCarrotOnStick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Tags:["MCFitem","MCF_EvokerFangsWand"]}}}] run function mcf:system/phase_of_war/evoker_fangs/mainhand
execute as @s[scores={UseCarrotOnStick=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Tags:["MCFitem","MCF_EvokerFangsWand"]}}]}] run function mcf:system/phase_of_war/evoker_fangs/offhand