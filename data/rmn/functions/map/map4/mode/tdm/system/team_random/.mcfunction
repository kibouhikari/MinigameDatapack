# 一人ずつチームを振り分け
    #チームに入っていない人数を取得
    execute as @a[tag=rmn.player] if entity @s[team=!rmn.red] if entity @s[team=!rmn.blue] run tag @s add rmn.not_team
    execute store result score #not_team_player rmn.temporary if entity @a[tag=rmn.not_team]

    #チームに入っていない人数が2人以上なら
    execute if score #not_team_player rmn.temporary matches 2.. run function rmn:map/map4/mode/tdm/system/team_random/multi

    #チームに入っていない人数を取得
    execute as @a[tag=rmn.player] if entity @s[team=!rmn.red] if entity @s[team=!rmn.blue] run tag @s add rmn.not_team
    execute store result score #not_team_player rmn.temporary if entity @a[tag=rmn.not_team]

    #チームに入っていない人数が1人なら
    execute if score #not_team_player rmn.temporary matches 1 run function rmn:map/map4/mode/tdm/system/team_random/single
    

# チームに入っていない人が3人以上ならこのファンクションを再度実行
    #チームに入っていない人数を取得
    execute as @a[tag=rmn.player] if entity @s[team=!rmn.red] if entity @s[team=!rmn.blue] run tag @s add rmn.not_team
    execute store result score #not_team_player rmn.temporary if entity @a[tag=rmn.not_team]

    #再度実行
    execute if score #not_team_player rmn.temporary matches 1.. run function rmn:map/map4/mode/tdm/system/team_random/