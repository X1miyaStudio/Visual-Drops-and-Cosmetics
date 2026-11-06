scoreboard players operation $pair x1di.tmp = @s x1di.id
scoreboard players set $lock_action x1di.tmp 0

execute on target if items entity @s weapon.mainhand minecraft:echo_shard[minecraft:custom_data~{x1miya_itemdrop:{lock_key:1b}}] run scoreboard players set $lock_action x1di.tmp 1
execute on target if items entity @s weapon.mainhand minecraft:echo_shard[minecraft:custom_data~{x1miya_itemdrop:{lock_key:1}}] run scoreboard players set $lock_action x1di.tmp 1

execute if score $lock_action x1di.tmp matches 1 run function x1miya_itemdrop:pickup/toggle_lock
execute if score $lock_action x1di.tmp matches 0 run function x1miya_itemdrop:pickup/queue
