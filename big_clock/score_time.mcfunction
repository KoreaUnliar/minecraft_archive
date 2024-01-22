scoreboard players add #ct1 timer 1
execute if score #ct1 timer matches 20.. run scoreboard players add #ct2 timer 1
execute if score #ct1 timer matches 20.. run scoreboard players set #ct1 timer 0

execute if score #ct2 timer matches 10.. run scoreboard players add #ct3 timer 1
execute if score #ct2 timer matches 10.. run scoreboard players set #ct2 timer 0

execute if score #ct3 timer matches 6.. run scoreboard players add #ct4 timer 1
execute if score #ct3 timer matches 6.. run scoreboard players set #ct3 timer 0

execute if score #ct4 timer matches 10.. run scoreboard players add #ct5 timer 1
execute if score #ct4 timer matches 10.. run scoreboard players set #ct4 timer 0

execute if score #ct5 timer matches 6.. run scoreboard players add #ct6 timer 1
execute if score #ct5 timer matches 6.. run scoreboard players set #ct5 timer 0

execute if score #ct6 timer matches 10.. run scoreboard players add #ct7 timer 1
execute if score #ct6 timer matches 10.. run scoreboard players set #ct6 timer 0

execute if score #ct7 timer matches 2.. if score #ct6 timer matches 4.. run scoreboard players set #ct1 timer 0
execute if score #ct7 timer matches 2.. if score #ct6 timer matches 4.. run scoreboard players set #ct2 timer 0
execute if score #ct7 timer matches 2.. if score #ct6 timer matches 4.. run scoreboard players set #ct3 timer 0
execute if score #ct7 timer matches 2.. if score #ct6 timer matches 4.. run scoreboard players set #ct4 timer 0
execute if score #ct7 timer matches 2.. if score #ct6 timer matches 4.. run scoreboard players set #ct5 timer 0
execute if score #ct7 timer matches 2.. if score #ct6 timer matches 4.. store success score #suc cmd.suc run scoreboard players set #ct6 timer 0
execute if score #suc cmd.suc matches 1.. run scoreboard players set #ct7 timer 0
execute if score #suc cmd.suc matches 1.. run scoreboard players reset #suc cmd.suc

function unliar:big_clock/display