## minigame:game/start/ffa/repeat

# ランダムスポーン7

# kill marker
kill @e[tag=randomspawn_pos,type=marker]

say a7
# 試合開始時リピート
execute if entity @a[tag=tag] as @r[tag=tag] at @s run function minigame:game/start/ffa/