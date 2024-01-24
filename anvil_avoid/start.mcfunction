tag @p add anvil_p
tp @a[tag=anvil_p] 4 35 -1452
setblock -9 64 -1451 redstone_block
gamemode adventure @a[tag=anvil_p]
fill 0 34 -1456 8 71 -1448 air replace anvil
advancement grant @p[tag=anvil_p] until unliar:server/anvil_void