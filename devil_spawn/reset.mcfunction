tag @a[tag=pray] remove pray
tag @a[tag=give_blood] remove give_blood
scoreboard players reset #suc cmd.suc
scoreboard players reset #wait_tick timer
scoreboard players set #wait_time timer 0
scoreboard players reset #play_tick timer
scoreboard players reset #run cmd.count
scoreboard players reset #charge_sound cmd.suc
kill @e[tag=spawn_inter]
summon interaction -399.5 64 55.5 {height:3,width:5,Tags:["spawn_inter"]}
kill @e[tag=spawn_effect]
kill @e[tag=spawn_effect1]
setblock -400 65 55 respawn_anchor[charges=0]