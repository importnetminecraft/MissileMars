execute if entity @s[scores={MissileSet=0,DirecToPlace=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/shieldbuster",posX:0,posY:-7,posZ:14, rotation:CLOCKWISE_180}
execute if entity @s[scores={MissileSet=0,DirecToPlace=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/shieldbuster",posX:-14,posY:-7,posZ:0, rotation:COUNTERCLOCKWISE_90}
execute if entity @s[scores={MissileSet=0,DirecToPlace=2}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/shieldbuster",posX:0,posY:-7,posZ:-14}
execute if entity @s[scores={MissileSet=0,DirecToPlace=3}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/shieldbuster",posX:14,posY:-7,posZ:0, rotation:CLOCKWISE_90}
execute if entity @s[scores={MissileSet=1,DirecToPlace=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/shieldbuster",posX:1,posY:-7,posZ:19, rotation:CLOCKWISE_180}
execute if entity @s[scores={MissileSet=1,DirecToPlace=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/shieldbuster",posX:-19,posY:-7,posZ:1, rotation:COUNTERCLOCKWISE_90}
execute if entity @s[scores={MissileSet=1,DirecToPlace=2}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/shieldbuster",posX:-1,posY:-7,posZ:-19}
execute if entity @s[scores={MissileSet=1,DirecToPlace=3}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/shieldbuster",posX:19,posY:-7,posZ:-1, rotation:CLOCKWISE_90}