execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 30.. run particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0.5 5 normal
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 100.. run particle minecraft:soul ~ ~ ~ 1 1 1 0.005 1 normal
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 210.. run function unliar:legand_sword/circles_effect
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 280.. run give @p diamond_sword{display:{Name:'{"text":"전서래검","color":"gold","bold":true}', Lore:['{"text":"이 검은 영국에서 부터 시작되어 샘 스미스의 손길을 거쳐 아무튼 엄청난 방식으로 탄생한 전서래검이다.","color":"white"}']},HideFlags:5,Unbreakable:1b, Enchantments:[{id:"minecraft:sharpness",lvl:10s}]} 1
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 280.. run tellraw @p [{"text":"획득했다! 전서래검!","color":"gold","bold":true}]
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 280.. run advancement grant @p until unliar:server/legend_sword
execute as @e[tag=legend_sword] at @s if score #pickup_sword cmd.pickup matches 280.. run function unliar:legand_sword/reset_sword