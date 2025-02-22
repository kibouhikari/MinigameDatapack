# プレイヤーの属性を適用
    attribute @s generic.max_health base set 40
    effect give @s instant_health 10 10
    effect give @s saturation 10 10
    effect give @s resistance 3 255

# 死亡した人をTP
    function rmn:map/map0/mode/ffa/system/death/tp_random

# ロードアウト振り分け
    execute run function rmn:map/map0/mode/ffa/system/get_loadout

# 死亡判定を削除
    scoreboard players set @s rmn.deathcount 0