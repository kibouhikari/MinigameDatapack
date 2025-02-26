# prefixが移らないようにする
    team leave @a[tag=rmn.entry]

tag @a[tag=rmn.alive] add rmn.WIN
tellraw @a [{"selector":"@a[tag=rmn.WIN]"},{"text":"さんが生存者です！"}]
tag @a[tag=rmn.WIN] remove rmn.WIN

# killcount初期化
scoreboard players set @a rmn.killcount 0
scoreboard players set @a rmn.killscore 0
scoreboard players set #most_killcount rmn.temporary 0