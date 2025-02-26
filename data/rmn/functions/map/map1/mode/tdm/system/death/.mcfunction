# プレイヤーの属性を適用
    attribute @s generic.max_health base set 20
    effect give @s instant_health 10 10
    effect give @s saturation 10 10

# アイテムを削除
    clear @s

# 死亡した人をTP
    function rmn:map/map1/mode/tdm/system/spawn/

# ロードアウト振り分け
    execute run function rmn:map/map1/mode/tdm/system/get_loadout

# 死亡判定を削除
    scoreboard players set @s rmn.deathcount 0
    tag @s remove rmn.death