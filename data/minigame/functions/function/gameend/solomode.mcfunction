execute as @a at @s if score @s killcount = #dummy killcount run tag @s add WIN
tellraw @a [{"selector":"@a[tag=WIN]"},{"text":"さんが最多キル数です！"}]
tag @a[tag=WIN] remove WIN

# killcount初期化
scoreboard players set @a killcount 0
scoreboard players set @a killscore 0
scoreboard players set #most_killcount temporary 0
scoreboard players reset #dummy killcount
