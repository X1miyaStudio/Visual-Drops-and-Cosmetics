kill @e[type=minecraft:item,tag=x1di.match,limit=1]

execute as @e[type=minecraft:interaction,tag=x1di.hitbox,tag=x1di.pending] if score @s x1di.id = $pair x1di.tmp run function x1miya_itemdrop:pickup/none_hitbox
tag @s remove x1di.pending
