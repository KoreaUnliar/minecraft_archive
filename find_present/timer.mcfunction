scoreboard players add #present_time1 timer 1
execute if score #present_time1 timer matches 20.. run scoreboard players remove #present_time2 timer 1
execute if score #present_time1 timer matches 20.. run scoreboard players reset #present_time1 timer

title @a actionbar [{"text":"남은시간: ","color":"green"}, {"score":{"name":"#present_time2","objective":"timer"},"color":"gold","bold":true}, {"text": " | ","color": "green","bold": false},{"text": "찾은 선물: ","color": "green","bold": false}, {"score":{"name": "@a[tag=santa,limit=1]","objective": "santa_score"},"color": "gold","bold": true}, {"text": "/40","color": "gold","bold": true}]
item replace entity @a[tag=santa] container.8 with minecraft:ender_pearl 16