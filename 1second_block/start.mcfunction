execute if entity @e[tag=sp_block_data,nbt={data:{text:'{"text":"[없음]","color":"red"}'}}] run setblock 88 64 -1200 redstone_block

tag @p add sp_block
clear @a[tag=sp_block] white_wool
execute if entity @e[tag=sp_block_data,nbt={data:{text:'{"text":"[없음]","color":"red"}'}}] run item replace entity @a[tag=sp_block] weapon.mainhand with minecraft:white_wool{ CanPlaceOn:["minecraft:emerald_block","minecraft:white_concrete","minecraft:bricks"]} 4

execute unless entity @e[tag=sp_block_data,nbt={data:{text:'{"text":"[없음]","color":"red"}'}}] run setblock 88 64 -1198 minecraft:redstone_block

scoreboard players set #sp_block_timer timer 0
effect give @a[tag=sp_block] minecraft:instant_health infinite 2 true
gamemode adventure @a[tag=sp_block,gamemode=!spectator]
fill 82 64 -1209 88 74 -1203 air replace white_wool
advancement grant @a[tag=sp_block] until unliar:server/1sec_block
