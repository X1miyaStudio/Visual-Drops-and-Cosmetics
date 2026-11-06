function x1miya_itemdrop:pair/lock

execute on target at @s run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.45 1.4
execute on target run title @s actionbar {"translate":"x1miya_itemdrop.message.locked","fallback":"XS // item locked","color":"green"}
data remove entity @s interaction
