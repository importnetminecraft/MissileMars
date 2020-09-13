scoreboard players remove @s Tomahawk 1
scoreboard players remove @s Juggernaut 1
scoreboard players remove @s Lightning 1
scoreboard players remove @s Shieldbuster 1
scoreboard players remove @s Custom 1
scoreboard players remove @s Shield 1
scoreboard players remove @s Arrows 1
scoreboard players remove @s Fireball 1

function missilewars:new_missile/activate_missile

summon armor_stand 0 255 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,NoAI:1b}
loot replace entity @e[type=armor_stand,x=0] weapon loot missilewars:new_missile
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:creeper_spawn_egg"}]}] run scoreboard players set @s Tomahawk 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:wolf_spawn_egg"}]}] run scoreboard players set @s Juggernaut 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:ocelot_spawn_egg"}]}] run scoreboard players set @s Lightning 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:witch_spawn_egg"}]}] run scoreboard players set @s Shieldbuster 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:cave_spider_spawn_egg"}]}] run scoreboard players set @s Custom 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:snowball"}]}] run scoreboard players set @s Shield 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:arrow"}]}] run scoreboard players set @s Arrows 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:firework_rocket"}]}] run scoreboard players set @s Fireball 3
kill @e[type=armor_stand,x=0]

scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Tomahawk] QueuePos = @s Tomahawk
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Juggernaut] QueuePos = @s Juggernaut
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Lightning] QueuePos = @s Lightning
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Shieldbuster] QueuePos = @s Shieldbuster
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Custom] QueuePos = @s Custom
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Shield] QueuePos = @s Shield
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Arrows] QueuePos = @s Arrows
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Fireball] QueuePos = @s Fireball