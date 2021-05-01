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
## Remove scoreboards of time
scoreboard objectives remove Tick
scoreboard objectives remove Second
scoreboard objectives remove Minute
scoreboard objectives remove CountTick
scoreboard objectives remove RestSecond
scoreboard objectives remove TotalSecond
scoreboard objectives remove 60
## Remove scoreboards for participants
scoreboard objectives remove PlayerNumber
scoreboard objectives remove NumParticipant
scoreboard objectives remove NumParticipantTp
## Remove scoreboards for position
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
scoreboard objectives remove 45
scoreboard objectives remove Angle
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
scoreboard objectives remove Digit0001
scoreboard objectives remove Digit0010
scoreboard objectives remove Digit0100
scoreboard objectives remove Digit1000
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
scoreboard objectives remove DoNightVision
scoreboard objectives remove WeatherCyclePrv
scoreboard objectives remove DaylightCyclePrv
scoreboard objectives remove DoNightVisionPrv
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
## Remove scoreboards for landing phase
scoreboard objectives remove OnGround
## Remove scoreboards for preparation phase
scoreboard objectives remove UseBanner
## Remove scoreboards for war phase
scoreboard objectives remove StolenFlag
scoreboard objectives remove VexSpawn
## Remove scoreboards for war phase - evoker fangs
scoreboard objectives remove EvokerFangsCount
scoreboard objectives remove DamageOfWand
scoreboard objectives remove UseCarrotOnStick
## Remove scoreboards for war phase - launcher common
scoreboard objectives remove PlayerUUID0
scoreboard objectives remove PlayerUUID1
scoreboard objectives remove PlayerUUID2
scoreboard objectives remove PlayerUUID3
scoreboard objectives remove NotExplosive
scoreboard objectives remove UseCrossbow
## Remove scoreboards for war phase - rocket launcher
scoreboard objectives remove RocketUUID0
scoreboard objectives remove RocketUUID1
scoreboard objectives remove RocketUUID2
scoreboard objectives remove RocketUUID3
## Remove scoreboards for war phase - misile launcher
scoreboard objectives remove MisileUUID0
scoreboard objectives remove MisileUUID1
scoreboard objectives remove MisileUUID2
scoreboard objectives remove MisileUUID3
scoreboard objectives remove TargetUUID0
scoreboard objectives remove TargetUUID1
scoreboard objectives remove TargetUUID2
scoreboard objectives remove TargetUUID3
scoreboard objectives remove PrvTargetUUID0
scoreboard objectives remove PrvTargetUUID1
scoreboard objectives remove PrvTargetUUID2
scoreboard objectives remove PrvTargetUUID3
scoreboard objectives remove TargetReset
scoreboard objectives remove TargetChanged
scoreboard objectives remove DiffX
scoreboard objectives remove DiffY
scoreboard objectives remove DiffZ
scoreboard objectives remove PowDiffX
scoreboard objectives remove PowDiffY
scoreboard objectives remove PowDiffZ
scoreboard objectives remove NormXYZ
scoreboard objectives remove SqrtXYZ
scoreboard objectives remove SqrtVarI
scoreboard objectives remove SqrtVarX
scoreboard objectives remove SneakTime

## Reset objectives
scoreboard players reset #mcf
scoreboard players reset #mcf_red
scoreboard players reset #mcf_blue
scoreboard players reset @e