# モードがマップに対応してなかったら1減算する(rmn:menu/command/map/remove)
    #map0:対応
    execute if score #map rmn.temporary matches 0 run scoreboard players set #map_check_again temporary 0

    #map1:対応
    execute if score #map rmn.temporary matches 1 run scoreboard players set #map_check_again temporary 0

    #減算
    execute if score #map_check_again rmn.temporary matches 1 run function rmn:menu/command/map/remove

# モードがマップに対応していなかったらこのfunctionを再度実行
    execute if score #map_check_again rmn.temporary matches 1 run function rmn:menu/command/map/mode/remove/ffa