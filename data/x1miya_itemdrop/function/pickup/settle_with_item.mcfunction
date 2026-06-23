execute store result score $remaining x1di.tmp run data get entity @e[type=minecraft:item,tag=x1di.match,limit=1] Item.count
scoreboard players operation $original x1di.tmp = @e[type=minecraft:item,tag=x1di.match,limit=1] x1di.tmp

execute if score $remaining x1di.tmp < $original x1di.tmp run function x1miya_itemdrop:pickup/partial
execute unless score $remaining x1di.tmp < $original x1di.tmp run function x1miya_itemdrop:pickup/none
