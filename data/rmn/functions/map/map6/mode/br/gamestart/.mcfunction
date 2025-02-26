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
    tag @a[tag=rmn.entry] add rmn.alive
    execute store result score #player_alive rmn.temporary if entity @a[tag=rmn.alive]

    #参加者の試合idを更新
    scoreboard players operation @a[tag=rmn.player] rmn.in_match = #in_match rmn.temporary
    
    #参加者のマップidを更新
    scoreboard players set @a[tag=rmn.player] rmn.in_map 6

    #参加者のモードidを更新
    scoreboard players set @a[tag=rmn.player] rmn.in_mode 2

# チーム変更
    team join rmn.lobby @a[tag=!rmn.player]
    team join rmn.single @a[tag=rmn.player]

# 参加者をTP
say beforetp
    #tpしたい人にタグをつける
    tag @a[tag=rmn.player] add rmn.need_spawn
    function rmn:map/map6/mode/br/gamestart/tp_repeat
say aftertp

# プレイヤーの属性を適用
    execute as @a[tag=rmn.player] run attribute @s generic.max_health base set 40
    effect give @a[tag=rmn.player] instant_health 10 10
    effect give @a[tag=rmn.player] saturation 10 10
    effect give @a[tag=rmn.player] resistance 10 255

# プレイヤーのゲームモードをアドベンチャーに
    gamemode adventure @a[tag=rmn.player]

# リストにスコアを表示
    #キル数を表示
    scoreboard objectives setdisplay list rmn.killcount

    #体力表示
    scoreboard objectives setdisplay belowName rmn.health

# アイテム配布
    give @a[tag=rmn.player] tacz:modern_kinetic_gun{HasBulletInBarrel:1b,GunFireMode:"SEMI",GunId:"tacz:glock_17",GunCurrentAmmoCount:17}
    give @a[tag=rmn.player] tacz:ammo{AmmoId:"tacz:9mm"} 18

# 試合時間を適用
    scoreboard players set #br_gametimer_1 rmn.temporary 360
    scoreboard players set #br_gametimer_2 rmn.temporary 150
    scoreboard players set #br_gametimer_3 rmn.temporary 90
    execute store result bossbar minecraft:rmn.br_gametimer_0 max run scoreboard players get #br_gametimer_0 rmn.temporary
    execute store result bossbar minecraft:rmn.br_gametimer_0 value run scoreboard players get #br_gametimer_0 rmn.temporary
    execute store result bossbar minecraft:rmn.br_gametimer_1 max run scoreboard players get #br_gametimer_1 rmn.temporary
    execute store result bossbar minecraft:rmn.br_gametimer_1 value run scoreboard players get #br_gametimer_1 rmn.temporary
    scoreboard players set #br_gametimer_tick rmn.temporary 20

# 試合時間を表示
    bossbar set minecraft:rmn.br_gametimer_0 visible true
    bossbar set minecraft:rmn.br_gametimer_0 players @a

# 試合が始まったことにする
    data modify storage rmn: in_game set value 1b

# 試合が始まったことを通知
    #全体にタイトルを表示
    title @a title [{"text":"試合開始"}]
    title @a subtitle [{"text":"- BR -","color":"gray"}]
    tellraw @a [{"text":"フェーズ0 - 開始 -","color":"green"}]

    #ウィザー召喚音を鳴らす
    execute as @a at @s run playsound item.goat_horn.sound.1 master @s ~ ~ ~ 0.5 1 0.5

# バトルロワイヤル
    scoreboard players set #br_phase rmn.temporary 0
    scoreboard players operation #br_supplybox rmn.temporary = #br_default_supplybox rmn.temporary
    execute in minecraft:tenkuu run worldborder set 1501

    #補給ボックス出現
    function rmn:map/map6/mode/br/system/supply/

# 試合開始時につくデータを消す
    data remove storage rmn: on_start