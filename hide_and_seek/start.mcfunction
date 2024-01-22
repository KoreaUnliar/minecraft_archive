tag @r add seeker
tellraw @a [{"text":"이번턴 술래는 "},{"selector":"@a[tag=seeker]","color":"gold"},{"text":"입니다."}]
tp @a 136.30 64.00 -1284.62 -92.42 55.75
tag @a[tag=!seeker] add hider
effect give @a minecraft:saturation 99999 100 true
effect give @a[tag=seeker] speed 9999 1 true
effect give @a minecraft:night_vision 9999 255 true
setblock 136 64 -1296 redstone_block