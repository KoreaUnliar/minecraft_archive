kill @e[tag=legend_sword]
kill @e[tag=pickup_sword]
summon item_display 1348.46 65.50 -1619.51 {Tags:["legend_sword"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,2.356194490192345f,1f], translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},item:{id:"minecraft:diamond_sword",Count:1b}}
execute as @e[tag=legend_sword] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["pickup_sword"],width:1.5f,height:3f}
scoreboard players reset #pickup_sword cmd.pickup
kill @e[tag=circles_effect]
execute as @e[tag=pickup_sword] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,Tags:["circles_effect"],Marker:true}