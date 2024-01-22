execute unless score #suc cmd.suc matches 1.. run scoreboard players reset #suc2 cmd.suc 
execute unless score #suc cmd.suc matches 1.. run playsound entity.item.pickup master @a -129.5 65 -84 100 1 1
execute unless score #suc cmd.suc matches 1.. unless score #suc2 cmd.suc matches 1.. store success score #suc cmd.suc run summon item -129.5 65 -84.01 {Age:-32768,PickupDelay:32767,Tags:["welcome_drink"],Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:empty",CustomPotionColor:255}}}
execute if score #suc cmd.suc matches 1.. run scoreboard players add #drink_time timer 1
execute if score #suc cmd.suc matches 1.. if score #drink_time timer matches 20.. run scoreboard players add #drink_time1 timer 1
execute if score #suc cmd.suc matches 1.. if score #drink_time timer matches 20.. run scoreboard players reset #drink_time timer
execute unless score #drink_time1 timer matches 7.. run playsound minecraft:block.honey_block.slide master @a -129.5 65 -84 100 1 1
execute unless score #drink_time1 timer matches 7.. run particle minecraft:white_smoke -129.5 65.3 -84.01 0 0 0 0 0 normal
execute unless score #drink_time1 timer matches 7.. run title @s actionbar [{"text": "물약 제조중: ","color": "aqua"},{"score":{"name": "#drink_time1","objective": "timer"},"color": "gold"},{"text": "/7","color": "gray"}]
execute if score #drink_time1 timer matches 7.. run title @s actionbar {"text": "물약 제조완료!","color": "green"}
execute if score #drink_time1 timer matches 7.. run playsound entity.goat.screaming.milk master @a -129.5 65 -84 100 2 1
execute if score #drink_time1 timer matches 7.. run particle minecraft:end_rod -129.5 65.3 -84.01 0.1 0.1 0.1 1 300
execute as @e[tag=welcome_drink] at @s if score #drink_time1 timer matches 7.. run data merge entity @s {PickupDelay:1,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"웰컴드링크","color":"green","bold":true}',Lore:['{"text":"정말 맛있는 웰컴드링크","color":"white"}','{"text":"마시면 기분이 좋아진다.","color":"aqua","bold":true}']},HideFlags:32,custom_potion_effects:[{id:"minecraft:speed",amplifier:7b,duration:600,show_particles:0b},{id:"minecraft:nausea",amplifier:120b,duration:600,show_particles:0b},{id:"minecraft:resistance",amplifier:5b,duration:600,show_particles:0b}],CustomPotionColor:15465727}}}
execute if score #drink_time1 timer matches 7.. run scoreboard players add #suc2 cmd.suc 1
execute if score #suc2 cmd.suc matches 1.. run scoreboard players reset #drink_time timer
execute if score #suc2 cmd.suc matches 1.. run scoreboard players set #drink_time1 timer 0
execute if score #suc2 cmd.suc matches 1.. run scoreboard players reset #suc cmd.suc
execute if score #suc2 cmd.suc matches 1.. run data remove entity @e[tag=welcome_drink_inter,limit=1] interaction