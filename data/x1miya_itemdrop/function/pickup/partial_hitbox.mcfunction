execute on target at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 1.6
execute on target run title @s actionbar {"translate":"x1miya_itemdrop.message.partial","fallback":"XS // partial pickup. Remainder stayed on the ground.","color":"green"}

data remove entity @s interaction
tag @s remove x1di.pending
