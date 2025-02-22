# 各マップごとに分岐
    #map0
    execute if score #map rmn.temporary matches 0 run function rmn:map/map0/gameend/mode

    #map1
    execute if score #map rmn.temporary matches 1 run function rmn:map/map1/gameend/mode