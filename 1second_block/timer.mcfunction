title @a actionbar  [{"text":"남은시간: ","color":"yellow"}, {"score":{"name":"#sp_block_timer","objective":"timer"},"color":"green","bold":true}, ".",{"score":{"name":"#sp_block_timer1","objective":"timer"},"color":"green","bold":true}]

scoreboard players add @a[tag=sp_block] timer 1
execute if entity @a[tag=sp_block,scores={timer=2..}] run scoreboard players add #sp_block_timer1 timer 1
execute if entity @a[tag=sp_block,scores={timer=2..}] run scoreboard players set @a[tag=sp_block] timer 0

execute if score #sp_block_timer1 timer matches 10.. run scoreboard players add #sp_block_timer timer 1
execute if score #sp_block_timer1 timer matches 10.. run scoreboard players set #sp_block_timer1 timer 0