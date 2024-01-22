scoreboard players add #hideandseektime1 timer 1
execute if score #hideandseektime1 timer matches 2.. run scoreboard players add #hideandseektime2 timer 1
execute if score #hideandseektime1 timer matches 2.. run scoreboard players set #hideandseektime1 timer 0
execute if score #hideandseektime2 timer matches 10.. run scoreboard players add #hideandseektime3 timer 1
execute if score #hideandseektime2 timer matches 10.. run scoreboard players set #hideandseektime2 timer 0
title @a actionbar [{"text": "숨는자가 ","color": "aqua"},{"text":"살아남은 시간: ","color":"green","bold":true},{"score":{"name":"#hideandseektime3","objective":"timer"},"color":"gold"},{"text":"."},{"score":{"name":"#hideandseektime2","objective":"timer"},"color":"gold"}]