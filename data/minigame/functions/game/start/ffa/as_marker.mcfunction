## minigame:game/start/ffa/as_marker

# ランダムスポーン5

# Run main commands
    execute store result score @s s if entity @a[distance=..10,gamemode=!spectator]
    execute if score #temp.worst_player_count s > @s s run scoreboard players operation #temp.worst_player_count s = @s s

say a5
# repeat function or next function
    execute if score #random_spawn_count temporary matches 0.. as @a[tag=tag_flag] run function minigame:game/start/ffa/ffa
    execute unless score #random_spawn_count temporary matches 0.. as @e[tag=randomspawn_pos,type=marker] run function minigame:game/start/ffa/compare