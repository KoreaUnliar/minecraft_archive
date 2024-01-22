execute store result bossbar av value run scoreboard players get #av cmd.count
bossbar set av name [{"text":"사정: "},{"score":{"name":"#av","objective":"cmd.count"},"color":"dark_purple"}]
execute as @e[tag=gini] at @s if score #av cmd.count matches 10.. if score #avtime_end timer matches 35.. run effect give @s minecraft:invisibility infinite 255 true

#facing
execute if score #av cmd.count matches 10.. run setblock 1256 64 -1589 minecraft:redstone_block

#end
execute if score #av cmd.count matches 10.. run setblock 1264 64 -1589 redstone_block
#semen
execute if score #av cmd.count matches 10.. run setblock 1260 64 -1589 air