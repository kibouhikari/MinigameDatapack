# 参加者をTP
    execute in minecraft:overworld run tp @a[tag=rmn.entry] -5.5 57 -2.5 0 0

# 参加者を元の状態へ戻す
    tag @a remove rmn.player
    clear @a[tag=rmn.entry]
    gamemode adventure @a[tag=rmn.entry]
    effect clear @a[tag=rmn.entry]

# リストにスコアを表示
    #非表示
    scoreboard objectives setdisplay list

    #体力非表示
    scoreboard objectives setdisplay belowName

# 試合時間を表示
    bossbar set minecraft:rmn.gametimer visible false
    bossbar set minecraft:rmn.gametimer players

# リス地点をリセット
    tag @e[type=marker,tag=rmn.map0,tag=rmn.tdm_random_spawn] remove rmn.red
    tag @e[type=marker,tag=rmn.map0,tag=rmn.tdm_random_spawn] remove rmn.blue

# 試合が終わったことにする
    data modify storage rmn: in_game set value 0b

# 試合が始まったことを通知
    #全体にタイトルを表示
    title @a title [{"text":"試合終了"}]

    #勝利者を表示
    execute unless data storage rmn: {on_start:1b} run function rmn:map/map0/mode/tdm/gameend/win/

# ロビーチームに参加
    team join rmn.lobby @a[tag=rmn.entry]

# キル数をリセット
    scoreboard players set @a[tag=rmn.entry] rmn.killcount 0

    #試合終了時の音を鳴らす
    execute unless data storage rmn: {on_start:1b} as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.5