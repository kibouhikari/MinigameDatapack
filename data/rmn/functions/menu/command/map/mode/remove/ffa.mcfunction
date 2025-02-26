# モードがマップに対応してなかったら1減算する(rmn:menu/command/map/remove)
    #map0:対応
    execute if score #map rmn.temporary matches 0 run scoreboard players set #map_check_again rmn.temporary 0

    #map1:対応
    execute if score #map rmn.temporary matches 1 run scoreboard players set #map_check_again rmn.temporary 0

    #map2:対応
    execute if score #map rmn.temporary matches 2 run scoreboard players set #map_check_again rmn.temporary 0

    #map3:対応
    execute if score #map rmn.temporary matches 3 run scoreboard players set #map_check_again rmn.temporary 0

    #map4:対応
    execute if score #map rmn.temporary matches 4 run scoreboard players set #map_check_again rmn.temporary 0

    #map5:非対応
    execute if score #map rmn.temporary matches 5 run scoreboard players set #map_check_again rmn.temporary 1

    #減算
    execute if score #map_check_again rmn.temporary matches 1 run function rmn:menu/command/map/remove

# モードがマップに対応していなかったらこのfunctionを再度実行
    execute if score #map_check_again rmn.temporary matches 1 run function rmn:menu/command/map/mode/remove/ffa