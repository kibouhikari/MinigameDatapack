#モードごとに分岐
    execute if score #mode rmn.temporary matches 0 run function rmn:menu/command/matchstart/mode/ffa
    execute if score #mode rmn.temporary matches 1 run function rmn:menu/command/matchstart/mode/tdm