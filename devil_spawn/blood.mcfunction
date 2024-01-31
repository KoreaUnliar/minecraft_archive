title @a actionbar {"text": " "}
scoreboard players reset #run cmd.count
summon lightning_bolt -399.5 64 55.5
particle explosion -400 67 55 0 0 0 0 10
playsound block.respawn_anchor.deplete master @a[tag=pray] -400 69 55 100 1 1
execute store result score #count cmd.count run random value 1..10
execute if score #count cmd.count matches 7 run function unliar:devil_spawn/summon_event
execute if entity @a[tag=give_blood] if score #count cmd.count matches 5..6 run function unliar:devil_spawn/summon_event
# execute if score #count cmd.count matches 7 run playsound entity.wither.spawn master @a[tag=pray] -400 69 55 100 1 1
execute unless entity @a[tag=give_blood] unless score #count cmd.count matches 7 run playsound entity.player.burp master @a[tag=pray] -400 69 55 100 1 1
execute unless entity @a[tag=give_blood] unless score #count cmd.count matches 7 run tellraw @s [{"text": "악마가 소환되지 않았다!\n아무래도 진심이 부족한 모양이다.","color": "green"}]

execute if entity @a[tag=give_blood] unless score #count cmd.count matches 5..7 run playsound entity.player.burp master @a[tag=pray] -400 69 55 100 1 1
execute if entity @a[tag=give_blood] unless score #count cmd.count matches 5..7 run tellraw @s [{"text": "악마가 소환되지 않았다!\n아무래도 진심이 부족한 모양이다.","color": "green"},{"text": "\n추신. 피는 정말 맛있었어.","color": "red","bold": true}]

function unliar:devil_spawn/reset