tellraw @a  [{"text":"성공! :","color":"green","bold":true}, {"score":{"name":"#sp_block_timer","objective":"timer"},"color":"green","bold":true}, {"text":".","color":"yellow","bold":true}, {"score":{"name":"#sp_block_timer1","objective":"timer"},"color":"green","bold":true}]
summon minecraft:firework_rocket 85 64 -1206 {Tags:["block_main"],FireworksItem:{id:firework_rocket,Count:1, tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16776968,1700095,16711680,3342116]}]}}}}
execute as @a[tag=sp_block] at @s run playsound entity.player.levelup master @s ~ ~ ~ 100 2 1
advancement grant @a[tag=sp_block] until unliar:server/1sec_block_clear
function unliar:1second_block/init