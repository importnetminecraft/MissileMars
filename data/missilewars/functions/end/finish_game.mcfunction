execute if entity @a[team=Green,x=0] if entity @a[team=Blue,x=0] if score @s GameState matches 2 run function missilewars:end/add_points

kill @e[type=item,x=0]
kill @e[type=arrow,x=0]
kill @e[type=fireball,x=0]
kill @e[type=area_effect_cloud,tag=Base,x=0]

execute as @a[x=0] run function missilewars:end/leave