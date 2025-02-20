# 試合外処理
    #rmn: in_gameが0bなら試合外処理を実行
    execute if data storage rmn: {in_game:0b} run function rmn:map/hub/system/out_game/

# 試合内処理
    #rmn: in_gameが1bなら試合内処理を実行(hubから分岐)
    execute if data storage rmn: {in_game:1b} run function rmn:map/hub/system/in_game/