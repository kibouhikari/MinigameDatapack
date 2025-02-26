# モードごとに試合時間を適用する(秒換算)
    #FFA
    execute if score #mode rmn.temporary matches 0 run scoreboard players operation #ffa_gametimer rmn.temporary = #ffa_default_gametimer rmn.temporary

    #TDM
    execute if score #mode rmn.temporary matches 1 run scoreboard players operation #tdm_gametimer rmn.temporary = #tdm_default_gametimer rmn.temporary

    #BR
    execute if score #mode rmn.temporary matches 2 run scoreboard players operation #br_gametimer_0 rmn.temporary = #br_default_gametimer_0 rmn.temporary