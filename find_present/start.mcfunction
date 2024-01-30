tag @p add santa
function find_present:spawn_present
setblock -101 64 -1318 redstone_block
effect give @a[tag=santa] minecraft:saturation 9999 100 true
effect give @a[tag=santa] minecraft:resistance 9999 100 true
gamemode adventure @a[tag=santa]
tp @a[tag=santa] -137 64 -1298
advancement grant @p[tag=santa] until unliar:server/find_gift
scoreboard players set #present_time2 timer 120