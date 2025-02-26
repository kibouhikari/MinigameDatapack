#モードごとに分岐
    execute if score #mode rmn.temporary matches 0 run function rmn:menu/command/gametimer/mode/ffa/
    execute if score #mode rmn.temporary matches 1 run function rmn:menu/command/gametimer/mode/tdm/
    execute if score #mode rmn.temporary matches 2 run function rmn:menu/command/gametimer/mode/br/