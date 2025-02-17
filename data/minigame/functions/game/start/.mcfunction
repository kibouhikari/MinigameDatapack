# ゲーム終了
execute if score #game temporary matches 1 run function minigame:game/end/

# 試合時間設定
execute store result score #GameTimer temporary run scoreboard players get #gametimer temporary
execute store result storage minigame: half_gametimer int 0.5 run scoreboard players get #GameTimer temporary
execute store result score #half_gametimer temporary run data get storage minigame: half_gametimer

# スタート前準備
scoreboard players set #before_start_timer_switch temporary 1
scoreboard players set #before_start_timer temporary 5
scoreboard players set #temp.worst_player_count s 90000