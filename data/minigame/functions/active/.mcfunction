# 常時実行
scoreboard players add #dummy killcount 0

# entry cycle
function minigame:active/indicate

# 死亡検知
execute if entity @a[scores={deathcount=1..}] run function minigame:active/death/

# 退出検知
execute if entity @a[scores={leave_game=1..}] run function minigame:active/leave/

# in_gameゲーム中常時実行
execute if score #game temporary matches 1 run function minigame:in_game/action/

# 落雷警告音
execute if score #special_lighting_bolt_timer temporary matches 10 run function minigame:function/special/etc/marker
execute if score #special_lighting_bolt_timer temporary matches 0 run function minigame:function/special/etc/marker
execute if score #special_lighting_bolt_timer temporary matches 0.. run scoreboard players remove #special_lighting_bolt_timer temporary 1
execute as @a at @s if score #special_lighting_bolt_timer temporary matches 20 run playsound block.anvil.land player @s
execute as @a at @s if score #special_lighting_bolt_timer temporary matches 10 run playsound block.anvil.land player @s
execute as @a at @s if score #special_lighting_bolt_timer temporary matches 0 run playsound block.anvil.land player @s