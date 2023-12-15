
# スコア作成
scoreboard objectives add temporary dummy
scoreboard objectives add temporary dummy
scoreboard objectives add deathcount deathCount
scoreboard objectives add killcount playerKillCount
scoreboard objectives add killscore playerKillCount
scoreboard objectives add random_team dummy
scoreboard objectives add random_spawn dummy

# スコア設定
scoreboard players add #dummy killscore 0
scoreboard players add #most_killcount temporary 0
scoreboard players add #killcount.red temporary 0
scoreboard players add #killcount.blue temporary 0
scoreboard players add #killcount.green temporary 0
scoreboard players add #killcount.yellow temporary 0
scoreboard objectives setdisplay list killcount
scoreboard players set #special_1Limit temporary 4800
scoreboard players set #special_2Limit temporary 3600
scoreboard players set #special_3Limit temporary 2400
scoreboard players set #special_4Limit temporary 1200
execute unless score #map temporary matches 0.. run scoreboard players set #map temporary 1

# チーム作成
team add red "Red"
team add blue "Blue"
team add green "Green"
team add yellow "Yellow"
team add lobby "Lobby"
team add single_battle "Single"

# チーム設定
team modify red friendlyFire false
team modify red prefix [{"text":"Red","color":"red"},{"text":" - ","color":"white"}]
team modify blue friendlyFire false
team modify blue prefix [{"text":"Blue","color":"blue"},{"text":" - ","color":"white"}]
team modify green friendlyFire false
team modify green prefix [{"text":"Green","color":"green"},{"text":" - ","color":"white"}]
team modify yellow friendlyFire false
team modify yellow prefix [{"text":"Yellow","color":"yellow"},{"text":" - ","color":"white"}]

team modify red nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams
team modify green nametagVisibility hideForOtherTeams
team modify yellow nametagVisibility hideForOtherTeams
team modify single_battle nametagVisibility hideForOwnTeam


# リロード通知
tellraw @a {"text":"Minigame Datapack has successfully loaded!"}