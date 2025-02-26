# 各モードごとに分岐
    #ffa
    execute if score #mode rmn.temporary matches 0 run function rmn:map/map1/mode/ffa/gameend/

    #tdm
    execute if score #mode rmn.temporary matches 1 run function rmn:map/map1/mode/tdm/gameend/