execute as @e[type=minecraft:interaction,tag=x1di.hitbox,tag=x1di.pending] if score @s x1di.id = $pair x1di.tmp run function x1miya_itemdrop:pickup/full_hitbox
function x1miya_itemdrop:pair/kill_by_id
