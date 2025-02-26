# ランダムな人を1人tpさせる
    tag @r[tag=rmn.need_spawn] add rmn.on_spawn
    execute as @a[tag=rmn.on_spawn] run function rmn:map/map4/mode/ffa/system/spawn/
    tag @a[tag=rmn.on_spawn] remove rmn.need_spawn
    tag @a[tag=rmn.on_spawn] remove rmn.on_spawn

# tpしたい人がまだいるならもう一度実行
    execute if entity @a[tag=rmn.need_spawn] run function rmn:map/map4/mode/ffa/gamestart/tp_repeat