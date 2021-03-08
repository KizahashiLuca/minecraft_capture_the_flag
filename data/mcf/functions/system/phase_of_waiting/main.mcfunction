#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Log in the mid of the game
function mcf:system/phase_of_waiting/login_mid_game

## Time system
function mcf:system/phase_of_waiting/time/tick

## Set gamerule
execute if score #mcf Second matches 1 if score #mcf Tick matches 18 run function mcf:system/phase_of_waiting/set_gamerule
## Set player
execute if score #mcf Second matches 1 if score #mcf Tick matches 17 run function mcf:system/phase_of_waiting/set_player
## Set world
execute if score #mcf Second matches 1 if score #mcf Tick matches 16 run function mcf:system/phase_of_waiting/set_world
## Set wall
execute if score #mcf Second matches 1 if score #mcf Tick matches 15 run function mcf:system/phase_of_waiting/set_wall
## Set team a
execute if score #mcf Second matches 1 if score #mcf Tick matches 2 run function mcf:system/phase_of_waiting/team_a/set_team
## Set team b
execute if score #mcf Second matches 1 if score #mcf Tick matches 1 run function mcf:system/phase_of_waiting/team_b/set_team
## Change phase
execute if score #mcf Second matches 0 if score #mcf Tick matches 0 run function mcf:system/phase_of_landing/change_to