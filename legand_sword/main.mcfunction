# sword_interaction
execute as @e[tag=pickup_sword] on target store success score #legend.suc cmd.suc run scoreboard players add #pickup_sword cmd.pickup 1
execute as @e[tag=legend_sword] at @s if score #legend.suc cmd.suc matches 1.. run tp @s ~ ~0.005 ~
execute as @e[tag=legend_sword] at @s if score #legend.suc cmd.suc matches 1.. run playsound minecraft:block.grindstone.use master @p ~ ~ ~ 100 1 1
execute as @e[tag=pickup_sword] at @s run data remove entity @s interaction
execute as @e[tag=legend_sword] at @s if score #legend.suc cmd.suc matches 1.. run scoreboard players reset #legend.suc cmd.suc

# sword_event
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 30.. run particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0.5 5 normal
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 100.. run particle minecraft:soul ~ ~ ~ 1 1 1 0.005 1 normal
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 210.. as @e[tag=circles_effect] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 210.. as @e[tag=circles_effect] at @s run particle minecraft:end_rod ^ ^ ^1 0 0 0 0 1
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 280.. run give @p diamond_sword{display:{Name:'{"text":"전서래검","color":"gold","bold":true}', Lore:['{"text":"이 검은 영국에서 부터 시작되어 샘 스미스의 손길을 거쳐 아무튼 엄청난 방식으로 탄생한 전서래검이다.","color":"white"}']},HideFlags:5,Unbreakable:1b, Enchantments:[{id:"minecraft:sharpness",lvl:10s}]} 1
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 280.. run tellraw @p [{"text":"획득했다! 전서래검!","color":"gold","bold":true}]
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 280.. run advancement grant @p until unliar:server/legend_sword
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 280.. run function unliar:legand_sword/reset_sword