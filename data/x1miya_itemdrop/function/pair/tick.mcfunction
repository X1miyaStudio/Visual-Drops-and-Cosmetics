execute unless entity @s[tag=x1di.locked] run scoreboard players add @s x1di.life 1

execute unless entity @s[tag=x1di.locked] if score @s x1di.life >= $life_max x1di.tmp run function x1miya_itemdrop:pair/expire
execute unless entity @s[tag=x1di.locked] unless score @s x1di.life >= $life_max x1di.tmp run function x1miya_itemdrop:drop/fall
execute if entity @s[tag=x1di.locked] run function x1miya_itemdrop:drop/fall
