tag @s add x1di.pending
execute as @e[type=minecraft:item_display,tag=x1di.display] if score @s x1di.id = $pair x1di.tmp run tag @s add x1di.pending
execute as @e[type=minecraft:item_display,tag=x1di.display,tag=x1di.pending] if score @s x1di.id = $pair x1di.tmp run tag @s add x1di.source

execute on target run function x1miya_itemdrop:pickup/player

execute as @e[type=minecraft:item_display,tag=x1di.source] run tag @s remove x1di.source
