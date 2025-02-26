# メニューを表示
    #タイトル
    tellraw @s [{"text":"メニュー"}]

    #モードを設定(モード名が出てくる)
    execute if score #mode rmn.temporary matches 0 run tellraw @s [{"text":"・モード "},{"text":"◀","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/mode/remove"}},{"text":" [FFA] "},{"text":"▶","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/mode/add"}}]
    execute if score #mode rmn.temporary matches 1 run tellraw @s [{"text":"・モード "},{"text":"◀","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/mode/remove"}},{"text":" [TDM] "},{"text":"▶","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/mode/add"}}]
    execute if score #mode rmn.temporary matches 2 run tellraw @s [{"text":"・モード "},{"text":"◀","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/mode/remove"}},{"text":" [BR] "},{"text":"▶","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/mode/add"}}]

    #設定したモードにマップが対応していない場合、マップ(#map rmn.temporary)を変更する
    execute if score #mode rmn.temporary matches 0 run function rmn:menu/command/map/mode/ffa
    execute if score #mode rmn.temporary matches 1 run function rmn:menu/command/map/mode/tdm
    execute if score #mode rmn.temporary matches 2 run function rmn:menu/command/map/mode/br

    #マップを設定
    tellraw @s [{"text":"・マップ "},{"text":"◀","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/map/remove"}},{"text":" ["},{"score":{"name": "#map","objective": "rmn.temporary"}},{"text":"] "},{"text":"▶","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/map/add"}}]

    #試合時間を設定(モードによって変わる)
    function rmn:menu/command/gametimer/

    #試合開始ボタン(マップとモードによって分岐)
    function rmn:menu/command/matchstart/

    #エラーがあったら警告文を表示
    execute if score #mode_error_check rmn.temporary matches 1 run tellraw @s {"text":"無効なモードです","color":"red"}
    execute if score #map_error_check rmn.temporary matches 1 run tellraw @s {"text":"無効なマップです","color":"red"}

    #警告文が出ていなければ空行
    execute unless score #mode_error_check rmn.temporary matches 1 unless score #map_error_check rmn.temporary matches 1 run tellraw @s [{"text":""}]

# 警告文が出ているかを検知するスコアを初期化
    scoreboard players set #mode_error_check rmn.temporary 0
    scoreboard players set #map_error_check rmn.temporary 0
    scoreboard players set #gametimer_error_check rmn.temporary 0