# フェーズ3ならフェーズ4へ変更
    execute if score #br_phase rmn.temporary matches 3 run bossbar set rmn.br_gametimer_1 visible false
    execute if score #br_phase rmn.temporary matches 3 run bossbar set rmn.br_gametimer_1 players
    execute if score #br_phase rmn.temporary matches 3 run bossbar set rmn.br_gametimer_2 visible true
    execute if score #br_phase rmn.temporary matches 3 run bossbar set rmn.br_gametimer_2 players @a
    execute if score #br_phase rmn.temporary matches 3 run tellraw @a [{"text":"フェーズ4 - 開始 -","color":"red"}]
    execute if score #br_phase rmn.temporary matches 3 as @a at @s run playsound item.goat_horn.sound.5 master @s ~ ~ ~ 0.5 1 0.5

    execute if score #br_phase rmn.temporary matches 3 run scoreboard players set #br_phase rmn.temporary 4

# フェーズ2ならフェーズ3へ変更
    execute if score #br_phase rmn.temporary matches 2 in minecraft:tenkuu run worldborder set 15 45
    execute if score #br_phase rmn.temporary matches 2 run tellraw @a [{"text":"フェーズ3 - 開始 -","color":"yellow"}]
    execute if score #br_phase rmn.temporary matches 2 as @a at @s run playsound item.goat_horn.sound.2 master @s ~ ~ ~ 0.5 1 0.5
    execute if score #br_phase rmn.temporary matches 1 store result bossbar minecraft:rmn.br_gametimer_1 max run scoreboard players get #br_gametimer_3 rmn.temporary

    execute if score #br_phase rmn.temporary matches 2 run scoreboard players set #br_phase rmn.temporary 3

# フェーズ1ならフェーズ2へ変更
    execute if score #br_phase rmn.temporary matches 1 in minecraft:tenkuu run worldborder set 158 90
    execute if score #br_phase rmn.temporary matches 1 run tellraw @a [{"text":"フェーズ2 - 開始 -","color":"yellow"}]
    execute if score #br_phase rmn.temporary matches 1 as @a at @s run playsound item.goat_horn.sound.2 master @s ~ ~ ~ 0.5 1 0.5
    execute if score #br_phase rmn.temporary matches 1 store result bossbar minecraft:rmn.br_gametimer_1 max run scoreboard players get #br_ametimer_2 rmn.temporary

    execute if score #br_phase rmn.temporary matches 1 run scoreboard players set #br_phase rmn.temporary 2

# フェーズ0ならフェーズ1へ変更
    execute if score #br_phase rmn.temporary matches 0 run bossbar set rmn.br_gametimer_0 visible false
    execute if score #br_phase rmn.temporary matches 0 run bossbar set rmn.br_gametimer_0 players
    execute if score #br_phase rmn.temporary matches 0 run bossbar set rmn.br_gametimer_1 visible true
    execute if score #br_phase rmn.temporary matches 0 run bossbar set rmn.br_gametimer_1 players @a
    execute if score #br_phase rmn.temporary matches 0 in minecraft:tenkuu run worldborder set 331 195
    execute if score #br_phase rmn.temporary matches 0 run tellraw @a [{"text":"フェーズ1 - 開始 -","color":"yellow"}]
    execute if score #br_phase rmn.temporary matches 0 as @a at @s run playsound item.goat_horn.sound.2 master @s ~ ~ ~ 0.5 1 0.5
    execute if score #br_phase rmn.temporary matches 1 store result bossbar minecraft:rmn.br_gametimer_1 max run scoreboard players get #br_gametimer_1 rmn.temporary

    execute if score #br_phase rmn.temporary matches 0 run scoreboard players set #br_phase rmn.temporary 1