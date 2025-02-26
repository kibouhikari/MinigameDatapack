# ランダムなチームに参加させる
    #参加させるプレイヤーにタグを付ける
    tag @r[tag=rmn.not_team] add rmn.join_random_team

    #UUIDを使用した乱数生成(二択の場合でも0~3の値を取得する)
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.join_random_team"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.join_random_team"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.join_random_team"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.join_random_team"]}
    execute as @a[tag=rmn.join_random_team] store result score @s rmn.random_team run data get entity @e[type=area_effect_cloud,tag=rmn.join_random_team,limit=1,sort=random] UUID[0] 1
    kill @e[type=area_effect_cloud,tag=rmn.join_random_team]
    scoreboard players set #3 rmn.temporary 3
    execute as @a[tag=rmn.join_random_team] run scoreboard players operation @s rmn.random_team %= #3 rmn.temporary

    #スコア別にチームに参加させる
    team join rmn.red @a[tag=rmn.join_random_team,scores={rmn.random_team=0..1}]
    team join rmn.blue @a[tag=rmn.join_random_team,scores={rmn.random_team=2..3}]

    #スコア初期化
    scoreboard players set @a rmn.random_team -1

    #参加させるプレイヤーに付与したタグを消す
    tag @a remove rmn.join_random_team

# 割り振られた人のrmn.not_teamタグを消す
    tag @a[team=rmn.red] remove rmn.not_team
    tag @a[team=rmn.blue] remove rmn.not_team