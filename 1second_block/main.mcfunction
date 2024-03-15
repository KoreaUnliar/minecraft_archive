#timer
execute unless entity @a[tag=sp_wait_time] run title @a actionbar  [{"text":"남은시간: ","color":"yellow"}, {"score":{"name":"#sp_block_timer","objective":"timer"},"color":"green","bold":true}, ".",{"score":{"name":"#sp_block_timer1","objective":"timer"},"color":"green","bold":true}]
execute unless entity @a[tag=sp_wait_time] if score #sp_block_timer1 timer matches ..9 run title @a actionbar  [{"text":"남은시간: ","color":"yellow"}, {"score":{"name":"#sp_block_timer","objective":"timer"},"color":"green","bold":true}, ".",{"text": "0","color": "green","bold": true},{"score":{"name":"#sp_block_timer1","objective":"timer"},"color":"green","bold":true}]

execute unless entity @a[tag=sp_wait_time] run scoreboard players add #sp_block_timer1 timer 5
execute unless entity @a[tag=sp_wait_time] if score #sp_block_timer1 timer matches 100.. run scoreboard players add #sp_block_timer timer 1
execute unless entity @a[tag=sp_wait_time] if score #sp_block_timer1 timer matches 100.. run scoreboard players set #sp_block_timer1 timer 0

#wait_timer
execute if entity @a[tag=sp_wait_time] run scoreboard players add #wait_1 timer 1
execute if entity @a[tag=sp_wait_time] if score #wait_1 timer matches 20.. run scoreboard players remove #wait_title timer 1
execute if entity @a[tag=sp_wait_time] if score #wait_1 timer matches 20.. unless score #wait_title timer matches ..0 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100 1 1
execute if entity @a[tag=sp_wait_time] if score #wait_1 timer matches 20.. run scoreboard players reset #wait_1 timer

execute if entity @a[tag=sp_wait_time] run title @a actionbar  [{"text":"시작까지: ","color":"yellow"}, {"score":{"name":"#wait_title","objective":"timer"},"color":"gray","bold":true},{"text": "초 남음"}]

execute if entity @a[tag=sp_wait_time] if score #wait_title timer matches ..0 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100 2 1
execute if entity @a[tag=sp_wait_time] if score #wait_title timer matches ..0 run item replace entity @a[tag=sp_block] weapon.mainhand with minecraft:white_wool{ CanPlaceOn:["minecraft:emerald_block","minecraft:white_concrete","minecraft:bricks"]} 4
execute if entity @a[tag=sp_wait_time] if score #wait_title timer matches ..0 run tag @a[tag=sp_wait_time] remove sp_wait_time

# Clear
execute as @e[tag=block_main] at @s if block ~1 ~ ~ white_wool if block ~-1 ~ ~ white_wool if block ~ ~ ~-1 white_wool if block ~ ~ ~1 white_wool unless score #sp_block_timer timer matches 1.. if score #sp_block_timer1 timer matches ..50 run advancement grant @a[tag=sp_block] until unliar:server/1sec_block_limit
execute as @e[tag=block_main] at @s if block ~1 ~ ~ white_wool if block ~-1 ~ ~ white_wool if block ~ ~ ~-1 white_wool if block ~ ~ ~1 white_wool unless score #sp_block_timer timer matches 1.. run tellraw @a  [{"text":"성공! :","color":"green","bold":true}, {"score":{"name":"#sp_block_timer","objective":"timer"},"color":"green","bold":true}, {"text":".","color":"yellow","bold":true}, {"score":{"name":"#sp_block_timer1","objective":"timer"},"color":"green","bold":true}]
execute as @e[tag=block_main] at @s if block ~1 ~ ~ white_wool if block ~-1 ~ ~ white_wool if block ~ ~ ~-1 white_wool if block ~ ~ ~1 white_wool unless score #sp_block_timer timer matches 1.. run summon minecraft:firework_rocket 85 64 -1206 {Tags:["block_main"],FireworksItem:{id:firework_rocket,Count:1, tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16776968,1700095,16711680,3342116]}]}}}}
execute as @e[tag=block_main] at @s if block ~1 ~ ~ white_wool if block ~-1 ~ ~ white_wool if block ~ ~ ~-1 white_wool if block ~ ~ ~1 white_wool unless score #sp_block_timer timer matches 1.. as @a[tag=sp_block] at @s run playsound entity.player.levelup master @s ~ ~ ~ 100 2 1
execute as @e[tag=block_main] at @s if block ~1 ~ ~ white_wool if block ~-1 ~ ~ white_wool if block ~ ~ ~-1 white_wool if block ~ ~ ~1 white_wool unless score #sp_block_timer timer matches 1.. run advancement grant @a[tag=sp_block] until unliar:server/1sec_block_clear
execute as @e[tag=block_main] at @s if block ~1 ~ ~ white_wool if block ~-1 ~ ~ white_wool if block ~ ~ ~-1 white_wool if block ~ ~ ~1 white_wool unless score #sp_block_timer timer matches 1.. run function 1second_block:init

# Fail
execute if score #sp_block_timer timer matches 1.. run clear @a[tag=sp_block] white_wool
execute if score #sp_block_timer timer matches 1.. run tellraw @a[tag=sp_block] {"text":"실패","color":"red","bold":true}
execute if score #sp_block_timer timer matches 1.. run playsound entity.villager.no master @a[tag=sp_block] ~ ~ ~ 100 0.1 1
execute if score #sp_block_timer timer matches 1.. run advancement grant @a[tag=sp_block] until unliar:server/1sec_block_fail
execute if score #sp_block_timer timer matches 1.. run function 1second_block:init