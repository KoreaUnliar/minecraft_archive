scoreboard players add #wait_1 timer 1
execute if score #wait_1 timer matches 20.. run scoreboard players remove #wait_title timer 1
execute if score #wait_1 timer matches 20.. unless score #wait_title timer matches ..0 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100 1 1
execute if score #wait_1 timer matches 20.. run scoreboard players reset #wait_1 timer

title @a actionbar  [{"text":"시작까지: ","color":"yellow"}, {"score":{"name":"#wait_title","objective":"timer"},"color":"gray","bold":true},{"text": "초 남음"}]

execute if score #wait_title timer matches ..0 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100 2 1
execute if score #wait_title timer matches ..0 run item replace entity @a[tag=sp_block] weapon.mainhand with minecraft:white_wool{ CanPlaceOn:["minecraft:emerald_block","minecraft:white_concrete","minecraft:bricks"]} 4
execute if score #wait_title timer matches ..0 run setblock 88 64 -1200 redstone_block
execute if score #wait_title timer matches ..0 run setblock 88 64 -1198 minecraft:air