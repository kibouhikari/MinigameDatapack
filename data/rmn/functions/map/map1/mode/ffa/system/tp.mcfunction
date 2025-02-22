# 参加者を各地点にtpさせる
    #各スコアごとに別地点へtp
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=0}] run tp -895.5 4 1364.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=1}] run tp -830.5 4 1334.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=2}] run tp -890.5 4 1366.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=3}] run tp -886.5 4 1356.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=4}] run tp -885.5 4 1330.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=5}] run tp -873.5 4 1336.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=6}] run tp -854.5 4 1363.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=7}] run tp -851.5 4 1332.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=8}] run tp -862.5 4 1349.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=9}] run tp -843.5 4 1346.5

# random_spawnスコアの初期化
    scoreboard players set @a rmn.random_spawn -1