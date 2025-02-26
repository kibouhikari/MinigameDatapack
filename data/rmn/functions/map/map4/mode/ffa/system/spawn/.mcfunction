# マーカーから半径25mに人がいないならタグをつける
    execute in minecraft:terminal as @e[type=marker,tag=rmn.map4,tag=rmn.ffa_random_spawn] at @s unless entity @a[distance=..25,tag=rmn.player,gamemode=adventure] run tag @s add rmn.can_spawn

# スポーン可能なマーカーの数を集計
    execute store result score #can_spawn_value rmn.temporary if entity @e[type=marker,tag=rmn.map4,tag=rmn.ffa_random_spawn,tag=rmn.can_spawn]

# 人がマーカーから半径25mにいないならスポーン
    execute if score #can_spawn_value rmn.temporary matches 1.. run tp @s @e[type=marker,tag=rmn.map4,tag=rmn.ffa_random_spawn,tag=rmn.can_spawn,limit=1,sort=random]

# すべてのマーカーから半径25mにプレイヤーがいるならランダムなマーカーへtp
    execute if score #can_spawn_value rmn.temporary matches 0 run tp @s @e[type=marker,tag=rmn.map4,tag=rmn.ffa_random_spawn,limit=1,sort=random]

# タグを消す
    tag @e[type=marker,tag=rmn.can_spawn] remove rmn.can_spawn