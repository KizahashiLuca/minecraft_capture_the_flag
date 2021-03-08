#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Calculate time
scoreboard players remove #mcf Second 1

## Send title message
execute if score #mcf Second matches 0..10 run title @a title ["",{"score":{"name":"#mcf","objective":"Second"}}]
execute if score #mcf Second matches 0..10 run title @a times 3 14 3

## Process the sound system
execute if score #mcf Second matches 1..3 as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score #mcf Second matches 0 as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1