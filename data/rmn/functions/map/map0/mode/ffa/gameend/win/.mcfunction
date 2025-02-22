# prefixが移らないようにする
    team leave @a[tag=rmn.entry]

execute as @a at @s if score @s rmn.killcount = #most_killcount rmn.temporary run tag @s add rmn.WIN
tellraw @a [{"selector":"@a[tag=rmn.WIN]"},{"text":"さんが最多キル数です！"}]
tag @a[tag=rmn.WIN] remove rmn.WIN

# killcount初期化
scoreboard players set @a rmn.killcount 0
scoreboard players set @a rmn.killscore 0
scoreboard players set #most_killcount rmn.temporary 0