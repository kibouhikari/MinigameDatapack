# special_1特殊イベント実行内容
execute if score #GameTimer temporary <= #special_1Limit temporary if score #special_1_type temporary matches 0 as @a[tag=player] run summon lightning_bolt ~ ~ ~
execute if score #GameTimer temporary <= #special_1Limit temporary if score #special_1_type temporary matches 1 as @a[tag=player] run effect give @s glowing
execute if score #GameTimer temporary <= #special_1Limit temporary if score #special_1_type temporary matches 0.. run scoreboard players set #special_1_type temporary -1

# special_2特殊イベント実行内容
execute if score #GameTimer temporary <= #special_2Limit temporary if score #special_2_type temporary matches 0 as @a[tag=player] run summon lightning_bolt ~ ~ ~
execute if score #GameTimer temporary <= #special_2Limit temporary if score #special_2_type temporary matches 1 as @a[tag=player] run effect give @s glowing
execute if score #GameTimer temporary <= #special_2Limit temporary if score #special_2_type temporary matches 0.. run scoreboard players set #special_2_type temporary -1

# special_3特殊イベント実行内容
execute if score #GameTimer temporary <= #special_3Limit temporary if score #special_3_type temporary matches 0 as @a[tag=player] run summon lightning_bolt ~ ~ ~
execute if score #GameTimer temporary <= #special_3Limit temporary if score #special_3_type temporary matches 1 as @a[tag=player] run effect give @s glowing
execute if score #GameTimer temporary <= #special_3Limit temporary if score #special_3_type temporary matches 0.. run scoreboard players set #special_3_type temporary -1

# special_4特殊イベント実行内容
execute if score #GameTimer temporary <= #special_4Limit temporary if score #special_4_type temporary matches 0 as @a[tag=player] run summon lightning_bolt ~ ~ ~
execute if score #GameTimer temporary <= #special_4Limit temporary if score #special_4_type temporary matches 1 as @a[tag=player] run effect give @s glowing
execute if score #GameTimer temporary <= #special_4Limit temporary if score #special_4_type temporary matches 0.. run scoreboard players set #special_4_type temporary -1