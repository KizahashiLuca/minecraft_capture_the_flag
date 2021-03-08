#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set bossbars
bossbar add minecraft:bossbar_blue ["",{"text":"PREPARATION TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf_blue","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf_blue","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]
bossbar set minecraft:bossbar_blue players @a[team=TeamB]
bossbar set minecraft:bossbar_blue name ["",{"text":"PREPARATION TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf_blue","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf_blue","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]

## Set scoreboards
scoreboard players operation #mcf_blue RestSecond = #mcf_blue Minute
scoreboard players operation #mcf_blue RestSecond *= #mcf_blue 60
scoreboard players operation #mcf_blue RestSecond += #mcf_blue Second
scoreboard players operation #mcf_blue TotalSecond = #mcf_blue RestSecond
execute store result bossbar minecraft:bossbar_blue max run scoreboard players get #mcf_blue TotalSecond
execute store result bossbar minecraft:bossbar_blue value run scoreboard players get #mcf_blue RestSecond