execute as @e[tag=sp_block_data] at @s if entity @e[tag=sp_block_data,nbt={data:{text:'{"text":"[없음]","color":"red"}'}}] store success score #suc cmd.suc run data modify entity @s data.text set value '{"text":"[3초]","color":"aqua"}'
execute as @e[tag=sp_block_data] at @s unless entity @e[tag=sp_block_data,nbt={data:{text:'{"text":"[없음]","color":"red"}'}}] unless score #suc cmd.suc matches 1.. run data modify entity @s data.text set value '{"text":"[없음]","color":"red"}'
execute if score #suc cmd.suc matches 1.. run scoreboard players reset #suc cmd.suc
function unliar:1second_block/setting