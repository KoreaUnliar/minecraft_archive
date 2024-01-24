scoreboard players add #anvil_spawn_time timer 1
execute if score #anvil_spawn_time timer matches 2.. run scoreboard players add #anvil_spawn_time1 timer 1
execute if score #anvil_spawn_time timer matches 2.. run scoreboard players set #anvil_spawn_time timer 0

execute if score #anvil_spawn_time1 timer matches 10.. run scoreboard players add #anvil_spawn_time2 timer 1
execute if score #anvil_spawn_time1 timer matches 10.. run scoreboard players set #anvil_spawn_time1 timer 0

scoreboard players add #anvil_life_time timer 1
execute if score #anvil_life_time timer matches 2.. run scoreboard players add #anvil_life_time1 timer 1
execute if score #anvil_life_time timer matches 2.. run scoreboard players set #anvil_life_time timer 0

execute if score #anvil_life_time1 timer matches 10.. run scoreboard players add #anvil_life_time2 timer 1
execute if score #anvil_life_time1 timer matches 10.. run scoreboard players set #anvil_life_time1 timer 0

title @a actionbar [{"text": "살아 남은시간: ","color": "green","bold": true}, {"score":{"name": "#anvil_life_time2","objective": "timer"},"color": "gold"}, ".",{"score":{"name": "#anvil_life_time1","objective": "timer"},"color": "gold"}]