# メニューを開いて設定をする(試合外のみ)
    #試合時間を適用する
    execute unless data storage rmn: {in_game:1b} run function rmn:menu/command/mode/set_gametimer

    #メニューを開く
    execute unless data storage rmn: {in_game:1b} run function rmn:menu/