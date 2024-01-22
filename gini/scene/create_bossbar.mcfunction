bossbar add av [{"text":"사정: "},{"score":{"name":"#av","objective":"cmd.count"},"color":"dark_purple"}]
bossbar set av color white
bossbar set av style notched_6
bossbar set av max 10
bossbar set av value 0
bossbar set av visible true
execute as @e[tag=work_armor] at @s run bossbar set av players @p