execute if score #anvil_life_time2 timer matches 60.. run advancement grant @p[tag=anvil_p] only unliar:server/anvil_void_noob
execute if score #anvil_life_time2 timer matches 200.. run advancement grant @p[tag=anvil_p] only unliar:server/anvil_void_pro

setblock -9 64 -1451 air
tp @a[tag=anvil_p] -38 64 -1436
tag @a[tag=anvil_p] remove anvil_p
scoreboard players set #anvil_life_time1 timer 0
scoreboard players set #anvil_life_time2 timer 0
fill 0 35 -1456 8 71 -1448 air replace anvil