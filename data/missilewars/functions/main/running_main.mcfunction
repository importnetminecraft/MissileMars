xp set @s 0 levels
effect give @s minecraft:haste 2 2 true
scoreboard players enable @s Start
scoreboard players reset @s AutoTeam
scoreboard players enable @s JoinSpectators
scoreboard players enable @s JoinRed
scoreboard players enable @s JoinBlue
scoreboard players reset @s ChooseMap
scoreboard players reset @s GiveBook
scoreboard players reset @s ChooseMissileSet
scoreboard players reset @s MissileSetSelect

tag @s add ActivePlayer
execute as @e[tag=BlueBase,sort=nearest] if entity @s[scores={GameState=0}] run gamemode adventure @a[tag=ActivePlayer,team=!Spectator,gamemode=!creative]
execute as @e[tag=BlueBase,sort=nearest] if entity @s[scores={GameState=1}] run gamemode survival @a[tag=ActivePlayer,team=!Spectator,gamemode=!creative]
execute as @e[tag=BlueBase,sort=nearest] if entity @s[scores={GameState=2}] run gamemode spectator @a[tag=ActivePlayer,team=!Spectator,gamemode=!creative]
gamemode spectator @a[tag=ActivePlayer,team=Spectator,gamemode=!creative]
tag @s remove ActivePlayer

execute as @s[scores={Start=1,StartVote=0}] as @e[tag=BlueBase] run scoreboard players remove @s Timer 60
execute as @s[scores={Start=1}] run scoreboard players set @s StartVote 1
execute as @s[scores={Start=1}] run scoreboard players set @s Start 0

execute as @s[scores={JoinSpectators=1}] run function missilewars:start/join_spectators
execute as @s[scores={JoinSpectators=1}] run scoreboard players set @s JoinSpectators 0

execute as @s[scores={JoinBlue=1}] run function missilewars:start/join_blue
execute as @s[scores={JoinBlue=1}] run scoreboard players set @s JoinBlue 0

execute as @s[scores={JoinRed=1}] run function missilewars:start/join_red
execute as @s[scores={JoinRed=1}] run scoreboard players set @s JoinRed 0

function missilewars:main/manage_items

execute as @s store result score @s bowCount run clear @s crossbow 0
execute as @s[team=!Spectator,scores={bowCount=0}] run function missilewars:main/givebow
execute as @s[team=!Spectator,scores={bowCount=2..2000}] run clear @s crossbow 1

execute as @s[scores={deathCheck=1..1000},team=Blue] at @s run scoreboard players set @s DirecToPlace 2
execute as @s[scores={deathCheck=1..1000},team=Green] at @s run scoreboard players set @s DirecToPlace 0
execute as @s[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run tag @s add dead
execute as @s[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run schedule function missilewars:main/turn_around 2t
scoreboard players set @s deathCheck 0