#interaction
execute as @e[tag=spawn_inter] on target unless entity @s[gamemode=!creative,gamemode=!spectator,scores={health=7..}] run tellraw @s {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n피를 바칠 수 없다.","color": "red"}
execute as @e[tag=spawn_inter] on target unless entity @s[gamemode=!creative,gamemode=!spectator,scores={health=7..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:beetroot_soup",Count:1b,tag:{blood:1}}}] run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 100 2 1
execute as @e[tag=spawn_inter] on target if entity @s[gamemode=!creative,gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:beetroot_soup",Count:1b,tag:{blood:1}}}] run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n맛있어 보이는군.\n\n","color":"green"},{"text":"[피의 그릇을 바친다]\n","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add #run cmd.count 1"}},{"text":"[피를 바치지 않는다]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/kill @s"}}]
execute as @e[tag=spawn_inter] on target if entity @s[gamemode=!creative,gamemode=!spectator,scores={health=7..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:beetroot_soup",Count:1b,tag:{blood:1}}}] run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n피를 바칠 자격이 있군.\n\n","color":"green"},{"text":"[피를 바친다]\n","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add #run cmd.count 1"}},{"text":"[피를 바치지 않는다]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/kill @s"}}]
execute as @e[tag=spawn_inter] on target if entity @s[gamemode=!creative,gamemode=!spectator] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 100 2 1
execute as @e[tag=spawn_inter] on target run data remove entity @e[tag=spawn_inter,limit=1] interaction
# Spawn Scene
execute if score #run cmd.count matches 1.. run title @a actionbar [{"text": "악마 소환까지: ","color": "gray"},{"score":{"name": "#wait_time","objective": "timer"},"color": "red"},{"text": "/10","color": "gray"}]
execute if score #run cmd.count matches 1.. as @e[tag=spawn_inter] at @s unless score #suc cmd.suc matches 1.. run tag @p[limit=1] add pray
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s unless score #suc cmd.suc matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:beetroot_soup",Count:1b,tag:{blood:1}}}] run tag @a[tag=pray] add give_blood 
execute if score #run cmd.count matches 1.. unless score #suc cmd.suc matches 1.. run damage @a[tag=pray,tag=!give_blood,limit=1] 6 magic
execute if score #run cmd.count matches 1.. unless score #suc cmd.suc matches 1.. run playsound entity.wither.spawn master @a -400 69 55 100 1 1
execute if score #run cmd.count matches 1.. unless score #suc cmd.suc matches 1.. run clear @a[tag=give_blood] beetroot_soup{blood:1} 1
execute if score #run cmd.count matches 1.. unless score #suc cmd.suc matches 1.. run tellraw @a[tag=give_blood] {"text": "음... 피가 맛있군..","color": "red","bold": true}
execute if score #run cmd.count matches 1.. unless score #suc cmd.suc matches 1.. run summon armor_stand -399.5 64 55.5 {Tags:["spawn_effect"],Marker:1b,Invisible:1b}
execute if score #run cmd.count matches 1.. unless score #suc cmd.suc matches 1.. store success score #suc cmd.suc run summon armor_stand -399.5 64 55.5 {Tags:["spawn_effect1"],Marker:1b,Invisible:1b}
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect] at @s unless entity @a[tag=give_blood] run function unliar:devil_spawn/magic_circles
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect1] at @s if entity @a[tag=give_blood] run function unliar:devil_spawn/magic_circles2
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect] at @s if entity @a[tag=give_blood] run tp @s ~ ~ ~ ~5 ~
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect1] at @s if entity @a[tag=give_blood] run tp @s ~ ~ ~ ~-1 ~
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect] at @s unless entity @a[tag=give_blood] run tp @s ~ ~ ~ ~1 ~
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect1] at @s unless entity @a[tag=give_blood] run tp @s ~ ~ ~ ~-5 ~
execute if score #run cmd.count matches 1.. run particle minecraft:soul -400 63 54 0 0.7 0 0 10
execute if score #run cmd.count matches 1.. run particle minecraft:soul -399 63 55 0 0.7 0 0 10
execute if score #run cmd.count matches 1.. run particle minecraft:soul -400 63 56 0 0.7 0 0 10
execute if score #run cmd.count matches 1.. run particle minecraft:soul -401 63 55 0 0.7 0 0 10
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect] at @s if entity @a[tag=give_blood] run particle flame ^3 ^ ^3 0 0.5 0 0 10
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect] at @s if entity @a[tag=give_blood] run particle flame ^3 ^ ^-3 0 0.5 0 0 10
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect] at @s if entity @a[tag=give_blood] run particle flame ^-3 ^ ^3 0 0.5 0 0 10
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect] at @s if entity @a[tag=give_blood] run particle flame ^-3 ^ ^-3 0 0.5 0 0 10
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect1] at @s unless entity @a[tag=give_blood] run particle flame ^5 ^ ^5 0 0.5 0 0 10
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect1] at @s unless entity @a[tag=give_blood] run particle flame ^5 ^ ^-5 0 0.5 0 0 10
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect1] at @s unless entity @a[tag=give_blood] run particle flame ^-5 ^ ^5 0 0.5 0 0 10
execute if score #run cmd.count matches 1.. as @e[tag=spawn_effect1] at @s unless entity @a[tag=give_blood] run particle flame ^-5 ^ ^-5 0 0.5 0 0 10
execute if score #run cmd.count matches 1.. run scoreboard players add #wait_tick timer 1
execute if score #run cmd.count matches 1.. run scoreboard players add #play_tick timer 1
execute if score #run cmd.count matches 1.. if score #play_tick timer matches 20.. run playsound ui.button.click master @a ~ ~ ~ 100 1 1
execute if score #run cmd.count matches 1.. if score #play_tick timer matches 20.. run scoreboard players reset #play_tick
execute if score #run cmd.count matches 1.. if score #wait_time timer matches 3 run scoreboard players reset #charge_sound cmd.suc
execute if score #run cmd.count matches 1.. if score #wait_time timer matches 6 run scoreboard players reset #charge_sound cmd.suc
execute if score #run cmd.count matches 1.. if score #wait_time timer matches 9 run scoreboard players reset #charge_sound cmd.suc
execute if score #run cmd.count matches 1.. if score #wait_time timer matches 2 run setblock -400 65 55 minecraft:respawn_anchor[charges=1]
execute if score #run cmd.count matches 1.. if score #wait_time timer matches 2 unless score #charge_sound cmd.suc matches 1.. store success score #charge_sound cmd.suc run playsound block.respawn_anchor.charge master @a[tag=pray] -400 69 55 100 1 1
execute if score #run cmd.count matches 1.. if score #wait_time timer matches 5 run setblock -400 65 55 minecraft:respawn_anchor[charges=2]
execute if score #run cmd.count matches 1.. if score #wait_time timer matches 5 unless score #charge_sound cmd.suc matches 1.. store success score #charge_sound cmd.suc run playsound block.respawn_anchor.charge master @a[tag=pray] -400 69 55 100 1 1
execute if score #run cmd.count matches 1.. if score #wait_time timer matches 8 run setblock -400 65 55 minecraft:respawn_anchor[charges=3]
execute if score #run cmd.count matches 1.. if score #wait_time timer matches 8 unless score #charge_sound cmd.suc matches 1.. store success score #charge_sound cmd.suc run playsound block.respawn_anchor.charge master @a[tag=pray] -400 69 55 100 1 1
execute if score #run cmd.count matches 1.. if score #wait_time timer matches 10 run setblock -400 65 55 minecraft:respawn_anchor[charges=4]
execute if score #run cmd.count matches 1.. if score #wait_time timer matches 10 unless score #charge_sound cmd.suc matches 1.. store success score #charge_sound cmd.suc run playsound block.respawn_anchor.charge master @a[tag=pray] -400 69 55 100 1 1
execute if score #run cmd.count matches 1.. if score #wait_tick timer matches 20.. run scoreboard players add #wait_time timer 1
execute if score #run cmd.count matches 1.. if score #wait_tick timer matches 20.. run scoreboard players reset #wait_tick timer
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. run title @a actionbar {"text": " "}
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. run summon lightning_bolt -399.5 64 55.5
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. run particle explosion -400 67 55 0 0 0 0 10
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. run playsound block.respawn_anchor.deplete master @a[tag=pray] -400 69 55 100 1 1
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. store result score #count cmd.count run random value 1..10
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. if score #count cmd.count matches 7 run tag @a[tag=pray] add devil_summon_event
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. if entity @a[tag=give_blood] if score #count cmd.count matches 5..6 run tag @a[tag=pray] add devil_summon_event
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. unless entity @a[tag=give_blood] unless score #count cmd.count matches 7 run playsound entity.player.burp master @a[tag=pray] -400 69 55 100 1 1
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. unless entity @a[tag=give_blood] unless score #count cmd.count matches 7 run tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n악마가 소환되지 않았다!\n아무래도 진심이 부족한 모양이다.","color": "green"}]
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. if entity @a[tag=give_blood] unless score #count cmd.count matches 5..7 run playsound entity.player.burp master @a[tag=pray] -400 69 55 100 1 1
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. if entity @a[tag=give_blood] unless score #count cmd.count matches 5..7 run tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n악마가 소환되지 않았다!\n아무래도 진심이 부족한 모양이다.","color": "green"},{"text": "\n추신. 피는 정말 맛있었어.","color": "red","bold": true}]
execute if score #run cmd.count matches 1.. as @a[tag=pray] at @s if score #wait_time timer matches 11.. run function unliar:devil_spawn/reset
#DEVIL SUMMON
execute if entity @a[tag=devil_summon_event] run advancement grant @a[tag=pray] until unliar:server/devil_spawn
execute if entity @a[tag=devil_summon_event] run tellraw @a[tag=pray] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"악마를 소환했다!","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"커맨드 수: "},{"text":"81","color":"green"},{"text":" +2","color":"light_purple"}]}}]
execute if entity @a[tag=devil_summon_event] run tellraw @a[tag=pray] [{"text": "음 고맙군.. ","color": "dark_red","bold": true},{"text": "악마의 정수","color": "gold","bold": true},{"text": "는 보답으로 주마.\n그리고 너가 준 생명 잘 쓰도록하지.","color": "dark_red","bold": true}]
execute if entity @a[tag=devil_summon_event] run summon item -399.5 69 55.5 {Invulnerable:1b,PickupDelay:1,Item:{id:"minecraft:echo_shard",Count:1b,tag:{display:{Name:'{"text":"악마의 정수","color":"dark_red","bold":true}',Lore:['{"text":"파란색 악마가 남긴 악마의 정수다.","color":"white"}','{"text":"근데 쓸모는 없음.","color":"yellow","bold":true}']}}}}
execute if entity @a[tag=devil_summon_event] run tag @a[tag=devil_summon_event] remove devil_summon_event