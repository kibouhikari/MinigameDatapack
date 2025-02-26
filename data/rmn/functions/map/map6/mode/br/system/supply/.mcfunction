# サプライマーカーにチェストを設置
    execute as @e[tag=rmn.supply_spawned] at @s run setblock ~ ~ ~ air replace
    execute in minecraft:tenkuu run kill @e[type=item]
    tag @e remove rmn.supply_spawned
    execute as @e[tag=rmn.map6,tag=rmn.br_spawn_supply_chest,limit=140,sort=random] run tag @s add rmn.supply_spawned
    execute as @e[tag=rmn.supply_spawned] at @s run setblock ~ ~ ~ chest{LootTable:"rmn:br_chest/roll"}
    tellraw @a [{"text":"補給ボックスが更新されました！","color":"yellow"}]