# 初期化
    #試合開始時にのみつくデータ
    data modify storage rmn: on_start set value 1b

    #試合終了処理
    function rmn:gameend

# 試合idを更新
    scoreboard players add #in_match rmn.temporary 1

# エントリー者を参加者へ変更
    #rmn.entryタグを持っている人にrmn.playerを付与
    tag @a[tag=rmn.entry] add rmn.player

    #参加者の試合idを更新
    scoreboard players operation @a[tag=rmn.player] rmn.in_match = #in_match rmn.temporary
    
    #参加者のマップidを更新
    scoreboard players set @a[tag=rmn.player] rmn.in_map 2

    #参加者のモードidを更新
    scoreboard players set @a[tag=rmn.player] rmn.in_mode 1

# チーム変更
    team join rmn.lobby @a[tag=!rmn.player]
    function rmn:map/map2/mode/tdm/system/team_random/

# 初期リス地点を設定
    tag @e[type=marker,tag=rmn.map2,tag=rmn.tdm_random_spawn,limit=1,sort=random,tag=!rmn.blue] add rmn.red
    tag @e[type=marker,tag=rmn.map2,tag=rmn.tdm_random_spawn,limit=1,sort=random,tag=!rmn.red] add rmn.blue

# 参加者をTP
    #tpしたい人にタグをつける
    tag @a[tag=rmn.player] add rmn.need_spawn
    function rmn:map/map2/mode/tdm/gamestart/tp_repeat

# リス地点を再設定
    function rmn:map/map2/mode/tdm/system/spawn/change/red/
    function rmn:map/map2/mode/tdm/system/spawn/change/blue/

# 参加者をTP
    #tpしたい人にタグをつける
    tag @a[tag=rmn.player] add rmn.need_spawn
    function rmn:map/map2/mode/tdm/gamestart/tp_repeat

# ロードアウト振り分け
    execute as @a[tag=rmn.player] run function rmn:map/map2/mode/tdm/system/get_loadout

# プレイヤーの属性を適用
    execute as @a[tag=rmn.player] run attribute @s generic.max_health base set 20
    effect give @a[tag=rmn.player] instant_health 10 10
    effect give @a[tag=rmn.player] saturation 10 10
    effect give @a[tag=rmn.player] resistance 3 255

# プレイヤーのゲームモードをアドベンチャーに
    gamemode adventure @a[tag=rmn.player]

# リストにスコアを表示
    #キル数を表示
    scoreboard objectives setdisplay list rmn.killcount

    #体力非表示
    scoreboard objectives setdisplay belowName rmn.health

# 試合時間を適用
    execute store result bossbar minecraft:rmn.gametimer max run scoreboard players get #tdm_gametimer rmn.temporary
    execute store result bossbar minecraft:rmn.gametimer value run scoreboard players get #tdm_gametimer rmn.temporary
    scoreboard players set #tdm_gametimer_tick rmn.temporary 20
    scoreboard players set #tdm_change_spawn_tick rmn.temporary 200

# 試合時間を表示
    bossbar set minecraft:rmn.gametimer visible true
    bossbar set minecraft:rmn.gametimer players @a

# 試合が始まったことにする
    data modify storage rmn: in_game set value 1b

# 試合が始まったことを通知
    #全体にタイトルを表示
    title @a title [{"text":"試合開始"}]
    title @a subtitle [{"text":"- TDM -","color":"gray"}]

    #ウィザー召喚音を鳴らす
    execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 0.3

# 試合開始時につくデータを消す
    data remove storage rmn: on_start