#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Time system
function mcf:system/phase_of_waiting/time/tick

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
execute if score #mcf Second matches 15..24 at @e[predicate=mcf:common/spawnpoint/world_spawn] run function mcf:system/phase_of_waiting/set_wall
## Send title message
execute if score #mcf Second matches 0..15 if score #mcf Tick matches 0 run title @a title ["",{"score":{"name":"#mcf","objective":"Second"}}]
execute if score #mcf Second matches 0..15 if score #mcf Tick matches 0 run title @a times 3 14 3
## Process the sound system
execute if score #mcf Second matches 1..3 if score #mcf Tick matches 0 as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score #mcf Second matches 0 if score #mcf Tick matches 0 as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1
## Change phase
execute if score #mcf Second matches 0 if score #mcf Tick matches 0 run function mcf:system/phase_of_landing/change_to