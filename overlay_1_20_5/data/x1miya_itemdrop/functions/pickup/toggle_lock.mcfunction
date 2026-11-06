scoreboard players set $was_locked x1di.tmp 0
execute if entity @s[tag=x1di.locked] run scoreboard players set $was_locked x1di.tmp 1

execute if score $was_locked x1di.tmp matches 1 run function x1miya_itemdrop:pickup/unlock_hitbox
execute if score $was_locked x1di.tmp matches 0 run function x1miya_itemdrop:pickup/lock_hitbox
