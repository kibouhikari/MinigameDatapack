# モードで分岐
    #FFA
    execute if score #mode rmn.temporary matches 0 run function rmn:map/hub/system/in_game/mode/ffa
    #TDM
    execute if score #mode rmn.temporary matches 1 run function rmn:map/hub/system/in_game/mode/tdm