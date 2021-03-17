#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Log in the mid of the game
function mcf:system/phase_of_waiting/login_mid_game

## Time system
function mcf:system/phase_of_waiting/time/tick

## Set effect
execute if score #mcf DoNightVision matches 1 run effect give @a[tag=MCF_Player] minecraft:night_vision 1000000 1 true

## Set gamerule
execute if score #mcf Second matches 27 if score #mcf Tick matches 0 run function mcf:system/phase_of_waiting/set_gamerule
## Set player
execute if score #mcf Second matches 26 if score #mcf Tick matches 10 run function mcf:system/phase_of_waiting/set_player
## Set world
execute if score #mcf Second matches 26 if score #mcf Tick matches 0 run function mcf:system/phase_of_waiting/set_world
## Set team a
execute if score #mcf Second matches 25 if score #mcf Tick matches 10 run function mcf:system/phase_of_waiting/team_a/set_team
## Set team b
execute if score #mcf Second matches 25 if score #mcf Tick matches 0 run function mcf:system/phase_of_waiting/team_b/set_team
## Set wall
execute if score #mcf Second matches 15..24 run function mcf:system/phase_of_waiting/set_wall
## Send title message
execute if score #mcf Second matches 0..15 if score #mcf Tick matches 0 run title @a title ["",{"score":{"name":"#mcf","objective":"Second"}}]
execute if score #mcf Second matches 0..15 if score #mcf Tick matches 0 run title @a times 3 14 3
## Process the sound system
execute if score #mcf Second matches 1..3 if score #mcf Tick matches 0 as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score #mcf Second matches 0 if score #mcf Tick matches 0 as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1
## Change phase
execute if score #mcf Second matches 0 if score #mcf Tick matches 0 run function mcf:system/phase_of_landing/change_to