title @a[tag=santa] title [{"text":"성공!","color":"green"}]
execute as @a[tag=santa] at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1, tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680,3407616,65509,9701631,16772608]}]}}}}
function find_present:reset
execute as @a[tag=santa] at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1, tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680,3407616,65509,9701631,16772608]}]}}}}
tag @a[tag=santa] remove santa