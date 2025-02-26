# プレイヤーの属性を適用
    attribute @s generic.max_health base set 20
    effect give @s instant_health 10 10
    effect give @s saturation 10 10

# 生存タグを削除
    tag @s remove rmn.alive
    team join rmn.spectator @s

# アイテムを削除
    clear @s

# 死亡した人をTP
    execute in minecraft:tenkuu run tp @s @e[type=marker,tag=rmn.map6,tag=rmn.br_center,limit=1,sort=nearest]

# 死亡判定を削除
    scoreboard players set @s rmn.deathcount 0
    tag @s remove rmn.death