scoreboard players operation $pair x1di.tmp = @s x1di.id
scoreboard players set $has_probe x1di.tmp 0

tag @e[type=minecraft:item,tag=x1di.match] remove x1di.match

execute as @e[type=minecraft:item,tag=x1di.pickup_probe,tag=x1di.internal] if score @s x1di.id = $pair x1di.tmp run tag @s add x1di.match
execute if entity @e[type=minecraft:item,tag=x1di.match,limit=1] run scoreboard players set $has_probe x1di.tmp 1

execute if score $has_probe x1di.tmp matches 1 run function x1miya_itemdrop:pickup/settle_with_item
execute if score $has_probe x1di.tmp matches 0 run function x1miya_itemdrop:pickup/full

tag @e[type=minecraft:item,tag=x1di.match] remove x1di.match
