# 初期化
    #試合終了処理
    function rmn:gameend

# エントリー者を参加者へ変更
    #rmn.entryタグを持っている人にrmn.playerを付与
    tag @a[tag=rmn.entry] add rmn.player

# 参加者をTP
    function rmn:map/map0/mode/ffa/gamestart/tp_random

# ロードアウト振り分け
    execute in minecraft:overworld as @a[tag=rmn.player] run function rmn:map/map0/mode/ffa/system/get_loadout

# 試合時間を表示
    execute store result bossbar minecraft:rmn.gametimer max run scoreboard players get #ffa_default_gametimer rmn.temporary
    execute store result bossbar minecraft:rmn.gametimer value run scoreboard players get #ffa_default_gametimer rmn.temporary
    bossbar set minecraft:rmn.gametimer visible true
    bossbar set minecraft:rmn.gametimer players @a