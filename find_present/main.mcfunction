#--------TIMER-------
scoreboard players add #present_time1 timer 1
execute if score #present_time1 timer matches 20.. run scoreboard players remove #present_time2 timer 1
execute if score #present_time1 timer matches 20.. run scoreboard players reset #present_time1 timer

title @a actionbar [{"text":"남은시간: ","color":"green"}, {"score":{"name":"#present_time2","objective":"timer"},"color":"gold","bold":true}, {"text": " | ","color": "green","bold": false},{"text": "찾은 선물: ","color": "green","bold": false}, {"score":{"name": "@a[tag=santa,limit=1]","objective": "santa_score"},"color": "gold","bold": true}, {"text": "/40","color": "gold","bold": true}]
item replace entity @a[tag=santa] container.8 with minecraft:ender_pearl 16
#---------------------

#----CLEAR-------
execute if entity @a[tag=santa,scores={santa_score=40..}] run title @a[tag=santa] title [{"text":"성공!","color":"green"}]
execute if entity @a[tag=santa,scores={santa_score=40..}] as @a[tag=santa] at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1, tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680,3407616,65509,9701631,16772608]}]}}}}
execute if entity @a[tag=santa,scores={santa_score=40..}] run function find_present:reset
execute if entity @a[tag=santa,scores={santa_score=40..}] as @a[tag=santa] at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1, tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680,3407616,65509,9701631,16772608]}]}}}}
execute if entity @a[tag=santa,scores={santa_score=40..}] run tag @a[tag=santa] remove santa
#----------------

#----FIND_GIFT---------
execute if entity @a[tag=santa,nbt={SelectedItem:{id:"minecraft:player_head",Count:1b}}] run scoreboard players add @a[tag=santa] santa_score 1
execute if entity @a[tag=santa,nbt={SelectedItem:{id:"minecraft:player_head",Count:1b}}] run clear @a[tag=santa] minecraft:player_head 1
execute if entity @a[tag=santa,nbt={SelectedItem:{id:"minecraft:player_head",Count:1b}}] run execute as @a[tag=santa] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1 1
execute if entity @a[tag=santa,nbt={SelectedItem:{id:"minecraft:player_head",Count:1b}}] run execute as @a[tag=santa] at @s run kill @e[tag=present_box,distance=0..2,limit=1]
#--------------------

# ----FAIL---------
execute if score #present_time2 timer matches ..0 run title @a[tag=santa] title [{"text":"실패!","color":"red"}]
execute if score #present_time2 timer matches ..0 run function find_present:reset
execute if score #present_time2 timer matches ..0 run tag @a[tag=santa] remove santa