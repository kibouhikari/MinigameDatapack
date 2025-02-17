# スコアボード生成
scoreboard objectives add temporary dummy
scoreboard objectives add s dummy
scoreboard objectives add deathcount deathCount
scoreboard objectives add temp.killcount playerKillCount
scoreboard objectives add killcount playerKillCount "キル数"

# スコアボードせってい
scoreboard objectives setdisplay list killcount

# チーム生成
team add lobby
team add red "赤チーム"
team add blue "青チーム"
team add green "緑チーム"
team add yellow "黄チーム"

# チーム設定
team modify lobby friendlyFire false

# ボスバー作成
bossbar add gametimer "試合時間"
bossbar add before_gametimer "カウントダウン"

# ボスバー設定
bossbar set gametimer style notched_6
bossbar set before_gametimer style notched_6
bossbar set gametimer color red
bossbar set before_gametimer color green

# 設定適用
function minigame:option/data/

# reloadまたはcreate完了通知
execute unless score #create temporary matches 1 run tellraw @a [{"text":"Load","color":"green"},{"text":"Complete","color":"yellow"}]
execute if score #create temporary matches 1 as @a[tag=host] run function minigame:create/reload_after