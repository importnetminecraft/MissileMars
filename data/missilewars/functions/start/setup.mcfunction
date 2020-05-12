gamerule fallDamage false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule announceAdvancements false
gamerule sendCommandFeedback false

time set noon
gamerule doDaylightCycle false
weather clear
gamerule doWeatherCycle false

difficulty easy
gamerule doMobSpawning false
gamerule doEntityDrops false

setworldspawn 0 100 0

forceload add -100 -200 0 200
forceload add 0 -200 100 200

scoreboard objectives add snowballTime dummy

scoreboard objectives add missiles dummy
scoreboard objectives setdisplay sidebar missiles
scoreboard objectives modify missiles displayname "Upcoming Missiles"

scoreboard objectives add points dummy
scoreboard objectives modify points displayname "Points"

scoreboard objectives add Constants dummy
scoreboard objectives add Start trigger
scoreboard objectives add StartVote dummy
scoreboard objectives setdisplay list StartVote
scoreboard objectives add StopAdverts trigger
scoreboard objectives add AutoTeam trigger
scoreboard objectives add JoinSpectators trigger
scoreboard objectives add ChooseMap trigger
scoreboard objectives add PrevMapVote trigger
scoreboard objectives add MapVote trigger
scoreboard objectives add GiveBook trigger
scoreboard objectives add PrevMissileSet dummy
scoreboard objectives add MissileSet dummy
scoreboard objectives add ChooseMissileSet trigger
scoreboard objectives add MissileSetSelect trigger
scoreboard objectives add Items dummy

scoreboard objectives add PlacedTomohawk minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add PlacedJuggurnaut minecraft.used:minecraft.wolf_spawn_egg
scoreboard objectives add PlacedLightning minecraft.used:minecraft.ocelot_spawn_egg
scoreboard objectives add PlacedBuster minecraft.used:minecraft.witch_spawn_egg
scoreboard objectives add PlacedCustom minecraft.used:minecraft.cave_spider_spawn_egg
scoreboard objectives add PlacedMissile minecraft.used:minecraft.cave_spider_spawn_egg

scoreboard objectives add SlimeKills minecraft.killed:minecraft.slime
scoreboard objectives add DirectionPlace dummy
scoreboard objectives add DirecToPlace dummy

scoreboard players set NumMissiles Constants 8
scoreboard players set Running Constants 0
scoreboard players set GreenWin Constants 0
scoreboard players set Blue Constants 0
scoreboard players set Ending Constants 0
scoreboard players set StartVotes Constants 0
scoreboard players set NumPlayers Constants 0
scoreboard players set @a StartVote 0
scoreboard players set BlueMembers Constants 0
scoreboard players set GreenMembers Constants 0

scoreboard players set Two Constants 2
scoreboard players set Ten Constants 10

scoreboard players set Length Constants 18
scoreboard players set ChestSize Constants 27
scoreboard players set Rows Constants 3
scoreboard players set Chests Constants 3
scoreboard players set Iterations Constants 162

scoreboard objectives add deathCheck deathCount

scoreboard objectives add shulkerCount dummy
scoreboard objectives add bowCount dummy

scoreboard objectives add clearX dummy
scoreboard objectives add clearY dummy
scoreboard objectives add clearZ dummy

scoreboard objectives add player_health health {"text":"♥","color":"red"}
scoreboard objectives setdisplay belowName player_health

team add Blue
team add Green
team add Spectator
team modify Blue color blue
team modify Green color green
team modify Spectator color dark_gray
team modify Blue collisionRule pushOtherTeams
team modify Green collisionRule pushOtherTeams
team modify Blue friendlyFire false
team modify Green friendlyFire false

function missilewars:start/advert

setblock -4 100 0 air

bossbar add missile_time {"text": "Time to Next Missile"}
bossbar set missile_time max 280
bossbar set missile_time style progress

function missilewars:end/finish_game