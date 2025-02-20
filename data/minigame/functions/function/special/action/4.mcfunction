# special_4特殊イベント実行内容
execute as @a[tag=player] at @s if score #special_4_type temporary matches 0.. run title @s title "特殊イベント発生！！"
execute as @a[tag=player] at @s if score #special_4_type temporary matches 0 run function minigame:function/special/etc/lighting_bolt
execute as @a[tag=player] if score #special_4_type temporary matches 1 run function minigame:function/special/etc/luminescence
execute if score #special_4_type temporary matches 2 run scoreboard players set #particletimer temporary 200
execute as @a[tag=player] if score #particletimer temporary matches 1.. run function minigame:function/special/etc/particle
execute as @a[tag=player] at @s if score #special_4_type temporary matches 3 run function minigame:function/special/etc/falling_creeper
scoreboard players set #special_4_type temporary -1