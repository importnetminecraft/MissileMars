playsound minecraft:block.note_block.guitar block @a[scores={PlacedMissile=1},sort=nearest,limit=1] ~ ~ ~ 1 0
execute at @s[name="Tomahawk"] as @a[scores={PlacedTomahawk=1},sort=nearest,limit=1] run function missilewars:new_missile/give/tomohawk
execute at @s[name="Juggernaut"] as @a[scores={PlacedJuggernaut=1},sort=nearest,limit=1] run function missilewars:new_missile/give/juggurnaut
execute at @s[name="Lightning"] as @a[scores={PlacedLightning=1},sort=nearest,limit=1] run function missilewars:new_missile/give/lightning
execute at @s[name="Shieldbuster"] as @a[scores={PlacedBuster=1},sort=nearest,limit=1] run function missilewars:new_missile/give/shieldbuster
execute at @s[name="Custom"] as @a[scores={PlacedCustom=1},sort=nearest,limit=1] run function missilewars:new_missile/give/custom
execute at @s[tag=missile] as @a[scores={PlacedMissile=1},sort=nearest,limit=1] run advancement grant @a only missilewars:not_hmw
kill @s