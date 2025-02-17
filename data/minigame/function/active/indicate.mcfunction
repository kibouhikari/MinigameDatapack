# ゴールド所持数
#execute as @a at @s store result score @s gold_ingot run clear @s minecraft:gold_ingot 0
#scoreboard players operation @a gold_ingot *= #9 temporary
#execute as @a at @s store result score @s gold run clear @s minecraft:gold_nugget 0
#execute as @a at @s run scoreboard players operation @s gold += @s gold_ingot
#execute as @a at @s store result score @s gold_block run clear @s minecraft:gold_block 0
#scoreboard players operation @a gold_block *= #81 temporary
#execute as @a at @s run scoreboard players operation @s gold += @s gold_block

# エントリー、ゴールド表示
execute as @a[tag=entry,tag=!player] at @s run title @s actionbar [{"text":"エントリー中","color":"green"}]
execute as @a[tag=!entry,tag=!player] at @s run title @s actionbar [{"text":"未エントリー","color":"gray"}]
execute as @a[tag=player] at @s if score #mode temporary matches 0 run title @s actionbar [{"text":"キル数:"},{"color":"aqua","score":{"objective":"killcount","name": "@s"}}]
execute as @a[tag=player] at @s if score #mode temporary matches 1 run title @s actionbar [{"text":"RedKills:","color":"red"},{"color":"aqua","score":{"objective":"temporary","name":"#killscore.red"}},{"text":"    BlueKills:","color":"blue"},{"color":"aqua","score":{"objective":"temporary","name":"#killscore.blue"}},{"text":"    GreenKills:","color":"green"},{"color":"aqua","score":{"objective":"temporary","name":"#killscore.green"}},{"text":"    YellowKills:","color":"yellow"},{"color":"aqua","score":{"objective":"temporary","name":"#killscore.yellow"}}]