fill 0 35 -1456 8 71 -1448 air replace anvil
title @a[tag=anvil_p] title [{"text":"성공!","color":"green"}]
advancement grant @p[tag=anvil_p] only unliar:server/anvil_void_noob
tp @a[tag=anvil_p] -38 64 -1436
execute as @a[tag=anvil_p] at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680,3407616,65509,9701631,16772608]}]}}}}
function anvil_avoid:reset

# data merge block -11 64 -1460 {Command:"execute if score @e[tag=anvil_spawn_time2,limit=1] timer matches 1.. if score @e[tag=anvil_spawn_time1,limit=1] timer matches 0.. run spreadplayers 4 -1452 1 4 false @e[tag=spawn_anvil_armor]"}