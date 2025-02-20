execute if score #killscore.red temporary > #most_killcount temporary run scoreboard players operation #most_killcount temporary = #killscore.red temporary
execute if score #killscore.blue temporary > #most_killcount temporary run scoreboard players operation #most_killcount temporary = #killscore.blue temporary

scoreboard players set #winteamcount temporary 0

execute if score #killscore.red temporary = #most_killcount temporary run scoreboard players add #winteamcount temporary 1
execute if score #killscore.blue temporary = #most_killcount temporary run scoreboard players add #winteamcount temporary 1

execute if score #winteamcount temporary matches 1 if score #killscore.red temporary = #most_killcount temporary run title @a subtitle {"text":"- 赤チームの勝利 -","color":"red"}
execute if score #winteamcount temporary matches 1 if score #killscore.blue temporary = #most_killcount temporary run title @a subtitle {"text":"- 青チームの勝利 -","color":"blue"}
execute if score #winteamcount temporary matches 2.. run title @a subtitle {"text":"- 引き分け -","color":"gray"}

# killcount初期化
scoreboard players set #killscore.red temporary 0
scoreboard players set #killscore.blue temporary 0
scoreboard players set @a killcount 0
scoreboard players set @a killscore 0
scoreboard players set #most_killcount temporary 0
scoreboard players reset #dummy killcount