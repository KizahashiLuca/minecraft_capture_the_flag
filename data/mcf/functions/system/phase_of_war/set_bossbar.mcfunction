#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Reset bossbars
bossbar remove minecraft:bossbar
bossbar remove minecraft:bossbar_red
bossbar remove minecraft:bossbar_blue

## Set scoreboards
scoreboard players operation #mcf Minute = #mcf TimeOfWar
scoreboard players operation #mcf RestSecond = #mcf Minute
scoreboard players operation #mcf RestSecond *= #mcf 60
scoreboard players operation #mcf RestSecond += #mcf Second
scoreboard players operation #mcf TotalSecond = #mcf RestSecond

## Set bossbars
bossbar add minecraft:bossbar ["",{"text":"WAR TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar name ["",{"text":"WAR TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #mcf TotalSecond
execute store result bossbar minecraft:bossbar value run scoreboard players get #mcf RestSecond