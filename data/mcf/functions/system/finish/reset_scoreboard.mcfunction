#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Remove scoreboards of gamemode
scoreboard objectives remove Phase
scoreboard objectives remove PrevPhase
scoreboard objectives remove Death
scoreboard objectives remove Kill
scoreboard objectives remove KillTemp
## Remove scoreboards of time
scoreboard objectives remove Tick
scoreboard objectives remove Second
scoreboard objectives remove Minute
scoreboard objectives remove RestSecond
scoreboard objectives remove TotalSecond
scoreboard objectives remove 60
## Remove scoreboards for participants
scoreboard objectives remove Participant
scoreboard objectives remove NumParticipant
## Remove scoreboards for setting phase - common
scoreboard objectives remove ThrowItem
scoreboard objectives remove Select02
scoreboard objectives remove Select03
scoreboard objectives remove Select04
scoreboard objectives remove Select05
scoreboard objectives remove Select06
scoreboard objectives remove Select09
scoreboard objectives remove Select10
scoreboard objectives remove Select11
scoreboard objectives remove Select12
scoreboard objectives remove Select13
scoreboard objectives remove Select14
scoreboard objectives remove Select15
scoreboard objectives remove Select16
scoreboard objectives remove Select17
scoreboard objectives remove Select18
scoreboard objectives remove Select19
scoreboard objectives remove Select20
scoreboard objectives remove Select21
scoreboard objectives remove Select22
scoreboard objectives remove Select23
scoreboard objectives remove Select24
scoreboard objectives remove Select25
scoreboard objectives remove Select26
scoreboard objectives remove Select28
scoreboard objectives remove Select31
scoreboard objectives remove Select34
scoreboard objectives remove Selected
## Remove scoreboards for setting phase - choose preparation time
scoreboard objectives remove 10
scoreboard objectives remove 100
scoreboard objectives remove 1000
scoreboard objectives remove 10000
scoreboard objectives remove digit_0001
scoreboard objectives remove digit_0010
scoreboard objectives remove digit_0100
scoreboard objectives remove digit_1000
scoreboard objectives remove TimeOfPrepare
scoreboard objectives remove TimeOfPreparePrv
## Remove scoreboards for setting phase - choose area
scoreboard objectives remove WorldBorder
scoreboard objectives remove WorldBorderPrv
## Remove scoreboards for setting phase - choose difficulty
scoreboard objectives remove Difficulty
scoreboard objectives remove DifficultyPrv
## Remove scoreboards for setting phase - choose war time
scoreboard objectives remove TimeOfWar
scoreboard objectives remove TimeOfWarPrv
## Remove scoreboards for setting phase - choose gamerule
scoreboard objectives remove WeatherCycle
scoreboard objectives remove DaylightCycle
scoreboard objectives remove WeatherCyclePrv
scoreboard objectives remove DaylightCyclePrv
## Remove scoreboards for setting phase - choose team setting
scoreboard objectives remove friendlyFire
scoreboard objectives remove collisionRule
scoreboard objectives remove VisibleName
scoreboard objectives remove VisibleInvis
scoreboard objectives remove VisibleDeath
scoreboard objectives remove SetTeamManual
scoreboard objectives remove friendlyFirePrv
scoreboard objectives remove collisionRulePrv
scoreboard objectives remove VisibleNamePrv
scoreboard objectives remove VisibleInvisPrv
scoreboard objectives remove VisibleDeathPrv
scoreboard objectives remove SetTeamManualPrv

## Reset objectives
scoreboard players reset #mcf
scoreboard players reset @a