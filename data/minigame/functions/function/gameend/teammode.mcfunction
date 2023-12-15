execute if score #killscore.red temporary > #most_killcount temporary run scoreboard players operation #most_killcount temporary = #killscore.red temporary
execute if score #killscore.blue temporary > #most_killcount temporary run scoreboard players operation #most_killcount temporary = #killscore.blue temporary
execute if score #killscore.green temporary > #most_killcount temporary run scoreboard players operation #most_killcount temporary = #killscore.green temporary
execute if score #killscore.yellow temporary > #most_killcount temporary run scoreboard players operation #most_killcount temporary = #killscore.yellow temporary

scoreboard players set #winteamcount temporary 0

execute if score #killscore.red temporary = #most_killcount temporary run scoreboard players add #winteamcount temporary 1
execute if score #killscore.blue temporary = #most_killcount temporary run scoreboard players add #winteamcount temporary 1
execute if score #killscore.green temporary = #most_killcount temporary run scoreboard players add #winteamcount temporary 1
execute if score #killscore.yellow temporary = #most_killcount temporary run scoreboard players add #winteamcount temporary 1

execute if score #winteamcount temporary matches 1 if score #killscore.red temporary = #most_killcount temporary run title @a subtitle {"text":"- 赤チームの勝利 -","color":"red"}
execute if score #winteamcount temporary matches 1 if score #killscore.blue temporary = #most_killcount temporary run title @a subtitle {"text":"- 青チームの勝利 -","color":"blue"}
execute if score #winteamcount temporary matches 1 if score #killscore.green temporary = #most_killcount temporary run title @a subtitle {"text":"- 緑チームの勝利 -","color":"green"}
execute if score #winteamcount temporary matches 1 if score #killscore.yellow temporary = #most_killcount temporary run title @a subtitle {"text":"- 黄チームの勝利 -","color":"yellow"}
execute if score #winteamcount temporary matches 2.. run title @a subtitle {"text":"- 引き分け -","color":"gray"}

# killcount初期化
scoreboard players set #killscore.red temporary 0
scoreboard players set #killscore.blue temporary 0
scoreboard players set #killscore.green temporary 0
scoreboard players set #killscore.yellow temporary 0
scoreboard players set @a killcount 0
scoreboard players set @a killscore 0
scoreboard players set #most_killcount temporary 0
scoreboard players reset #dummy killcount