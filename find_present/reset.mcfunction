effect clear @a[tag=santa] minecraft:resistance
scoreboard players set @a[tag=santa] santa_score 0
effect clear @a[tag=santa] minecraft:saturation
kill @e[tag=present_box]
tp @a[tag=santa] -103 64 -1309
setblock -101 64 -1318 air
clear @a[tag=santa] minecraft:ender_pearl