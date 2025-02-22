# マーカーから半径12.5mに人がいないならタグをつける
    execute in minecraft:overworld as @e[type=marker,tag=rmn.map0,tag=rmn.tdm_random_spawn,tag=rmn.blue] at @s unless entity @a[distance=..12.5,tag=rmn.player,gamemode=adventure] run tag @s add rmn.can_spawn

# スポーン可能なマーカーの数を集計
    execute store result score #can_spawn_value rmn.temporary if entity @e[type=marker,tag=rmn.map0,tag=rmn.tdm_random_spawn,tag=rmn.can_spawn,tag=rmn.blue]

# 人がマーカーから半径12.5mにいないならスポーン
    execute if score #can_spawn_value rmn.temporary matches 1.. run tp @s @e[type=marker,tag=rmn.map0,tag=rmn.tdm_random_spawn,tag=rmn.can_spawn,tag=rmn.blue,limit=1,sort=random]

# すべてのマーカーから半径12.5mにプレイヤーがいるならランダムなマーカーへtp
    execute if score #can_spawn_value rmn.temporary matches 0 run tp @s @e[type=marker,tag=rmn.map0,tag=rmn.tdm_random_spawn,tag=rmn.blue,limit=1,sort=random]

# タグを消す
    tag @e[type=marker,tag=rmn.can_spawn] remove rmn.can_spawn