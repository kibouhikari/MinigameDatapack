# special_2特殊イベント実行内容
execute as @a[tag=player] at @s if score #special_2_type temporary matches 1.. run title @s title "特殊イベント発生！！"
execute as @a[tag=player] at @s if score #special_2_type temporary matches 1 run function minigame:function/special/etc/lighting_bolt
execute as @a[tag=player] if score #special_2_type temporary matches 2 run function minigame:function/special/etc/luminescence
execute if score #special_2_type temporary matches 3 run scoreboard players set #particletimer temporary 200
execute as @a[tag=player] if score #particletimer temporary matches 1.. run function minigame:function/special/etc/particle
execute as @a[tag=player] at @s if score #special_2_type temporary matches 4 run function minigame:function/special/etc/falling_creeper
scoreboard players set #special_2_type temporary 0