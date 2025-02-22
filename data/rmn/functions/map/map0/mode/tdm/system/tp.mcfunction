# 参加者を各地点にtpさせる
    #各スコアごとに別地点へtp
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=0..1},team=rmn.red] run tp @s -36.5 60 122.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=2..3},team=rmn.red] run tp @s 4.5 61 118.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=0..1},team=rmn.blue] run tp @s 4.5 61 179.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=2..3},team=rmn.blue] run tp @s -39.5 59 175.5

# random_spawnスコアの初期化
    scoreboard players set @a rmn.random_spawn -1