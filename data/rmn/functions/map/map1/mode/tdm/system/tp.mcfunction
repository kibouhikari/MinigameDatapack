# 参加者を各地点にtpさせる
    #各スコアごとに別地点へtp
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=0..1},team=rmn.red] run tp @s -895.5 4 1364.5 180 0
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=2..3},team=rmn.red] run tp @s -895.5 4 1334.5 0 0
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=0..1},team=rmn.blue] run tp @s -830.5 4 1364.5 180 0
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=2..3},team=rmn.blue] run tp @s -830.5 4 1334.5 0 0

# random_spawnスコアの初期化
    scoreboard players set @a rmn.random_spawn -1