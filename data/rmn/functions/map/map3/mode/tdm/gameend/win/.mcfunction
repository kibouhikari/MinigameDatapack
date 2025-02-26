# prefixが移らないようにする
    team leave @a[tag=rmn.entry]

execute if score #killscore.red rmn.temporary > #most_killcount rmn.temporary run scoreboard players operation #most_killcount rmn.temporary = #killscore.red rmn.temporary
execute if score #killscore.blue rmn.temporary > #most_killcount rmn.temporary run scoreboard players operation #most_killcount rmn.temporary = #killscore.blue rmn.temporary

scoreboard players set #winteamcount rmn.temporary 0

execute if score #killscore.red rmn.temporary = #most_killcount rmn.temporary run scoreboard players add #winteamcount rmn.temporary 1
execute if score #killscore.blue rmn.temporary = #most_killcount rmn.temporary run scoreboard players add #winteamcount rmn.temporary 1

execute if score #winteamcount rmn.temporary matches 1 if score #killscore.red rmn.temporary = #most_killcount rmn.temporary run title @a subtitle {"text":"- 赤チームの勝利 -","color":"red"}
execute if score #winteamcount rmn.temporary matches 1 if score #killscore.blue rmn.temporary = #most_killcount rmn.temporary run title @a subtitle {"text":"- 青チームの勝利 -","color":"blue"}
execute if score #winteamcount rmn.temporary matches 2.. run title @a subtitle {"text":"- 引き分け -","color":"gray"}

# killcount初期化
scoreboard players set #killscore.red rmn.temporary 0
scoreboard players set #killscore.blue rmn.temporary 0
scoreboard players set @a rmn.killcount 0
scoreboard players set @a rmn.killscore 0
scoreboard players set #most_killcount rmn.temporary 0