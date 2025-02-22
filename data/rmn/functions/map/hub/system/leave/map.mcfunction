# 各マップごとに分岐
    #map0
    execute if score @s rmn.in_map matches 0 run function rmn:map/map0/leave/mode

    #map1
    execute if score @s rmn.in_map matches 1 run function rmn:map/map1/leave/mode