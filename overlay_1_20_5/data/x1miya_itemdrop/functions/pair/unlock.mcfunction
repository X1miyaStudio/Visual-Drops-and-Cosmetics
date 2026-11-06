scoreboard players operation $pair x1di.tmp = @s x1di.id

execute as @e[type=minecraft:interaction,tag=x1di.hitbox] if score @s x1di.id = $pair x1di.tmp run tag @s remove x1di.locked
execute as @e[type=minecraft:item_display,tag=x1di.display] if score @s x1di.id = $pair x1di.tmp run tag @s remove x1di.locked
execute as @e[type=minecraft:item_display,tag=x1di.display] if score @s x1di.id = $pair x1di.tmp run data merge entity @s {Glowing:1b}
execute as @e[type=minecraft:item_display,tag=x1di.display] if score @s x1di.id = $pair x1di.tmp run team join x1di.glow_unlock @s
execute as @e[type=minecraft:item_display,tag=x1di.display] if score @s x1di.id = $pair x1di.tmp run scoreboard players operation @s x1di.glow = $glow_time x1di.tmp
