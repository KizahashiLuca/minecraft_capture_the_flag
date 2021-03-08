#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Log in the mid of the game
function mcf:system/phase_of_war/login_mid_game

## Time system
function mcf:system/phase_of_war/time/tick

## Reset banner
execute as @a[team=TeamA,nbt={Inventory:[{id:"minecraft:red_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"red","text":"赤チームフラッグ"}'}}}]}] run function mcf:system/phase_of_war/banner/take_team_a
execute as @a[team=TeamB,nbt={Inventory:[{id:"minecraft:blue_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"blue","text":"青チームフラッグ"}'}}}]}] run function mcf:system/phase_of_war/banner/take_team_b

## Decide winner
execute as @a[team=TeamA,nbt={Inventory:[{id:"minecraft:blue_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"blue","text":"青チームフラッグ"}'}}}]}] at @s run function mcf:system/phase_of_war/banner/decide_winner_team_a
execute as @a[team=TeamB,nbt={Inventory:[{id:"minecraft:red_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"red","text":"赤チームフラッグ"}'}}}]}] at @s run function mcf:system/phase_of_war/banner/decide_winner_team_b