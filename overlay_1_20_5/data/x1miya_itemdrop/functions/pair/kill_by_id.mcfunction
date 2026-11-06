execute as @e[type=minecraft:item_display,tag=x1di.display] if score @s x1di.id = $pair x1di.tmp run kill @s
execute as @e[type=minecraft:interaction,tag=x1di.hitbox] if score @s x1di.id = $pair x1di.tmp run kill @s
execute as @e[type=minecraft:item,tag=x1di.internal] if score @s x1di.id = $pair x1di.tmp run kill @s
