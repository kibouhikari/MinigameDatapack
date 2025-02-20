# 参加者を各地点にtpさせる
    #各スコアごとに別地点へtp
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=0}] run tp -14.5 68 118.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=1}] run tp -13.5 61 131.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=2}] run tp 0.5 65 130.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=3}] run tp -15.5 71 178.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=4}] run tp -29.5 63 164.5
    execute as @a[tag=rmn.player,scores={rmn.random_spawn=5}] run tp -35.5 66 132.5

# random_spawnスコアの初期化
    scoreboard players set @a rmn.random_spawn -1