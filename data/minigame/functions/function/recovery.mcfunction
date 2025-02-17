# 体力最大値同期&回復、満腹度回復
$execute as @a[tag=player] run attribute @s minecraft:generic.max_health base set $(max_health)
$effect give @a[tag=player] instant_health $(health) $(health)
effect give @a minecraft:saturation 1 20