# 各モードごとに分岐
    #ffa
    execute if score @s rmn.in_mode matches 0 run function rmn:map/map1/mode/ffa/system/leave/

    #tdm
    execute if score @s rmn.in_mode matches 1 run function rmn:map/map1/mode/tdm/system/leave/