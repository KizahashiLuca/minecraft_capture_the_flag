#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set bossbars
bossbar add minecraft:time ["",{"text":"PREPARATION TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]
bossbar set minecraft:time players @a
bossbar set minecraft:time name ["",{"text":"PREPARATION TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]

## Set scoreboards
scoreboard players operation #mcf RestSecond = #mcf Minute
scoreboard players operation #mcf RestSecond *= #mcf 60
scoreboard players operation #mcf RestSecond += #mcf Second
scoreboard players operation #mcf TotalSecond = #mcf RestSecond
execute store result bossbar minecraft:time max run scoreboard players get #mcf TotalSecond
execute store result bossbar minecraft:time value run scoreboard players get #mcf RestSecond