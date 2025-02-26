# 参加者をTP
    execute in minecraft:overworld run tp @s -5.5 57 -2.5 0 0

# 参加者を元の状態へ戻す
    tag @s remove rmn.player
    clear @s
    gamemode adventure @s

    #ロビーチームに参加
    team join rmn.lobby @s

# キル数をリセット
    scoreboard players set @s rmn.killcount 0
    scoreboard players set @a rmn.killscore 0

# エントリーをはずす
    tag @s remove rmn.entry

# 退出したときに増えるスコアをリセット
    scoreboard players set @s rmn.leave_game 0