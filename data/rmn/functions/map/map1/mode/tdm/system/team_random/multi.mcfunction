# 各チームに一人ずつ割り振る
    #Redチーム
    execute as @r[tag=rmn.not_team] run team join rmn.red

    #割り振られた人のrmn.not_teamタグを消す
    tag @a[team=rmn.red] remove rmn.not_team

    #Blueチーム
    execute as @r[tag=rmn.not_team] run team join rmn.blue

    #割り振られた人のrmn.not_teamタグを消す
    tag @a[team=rmn.blue] remove rmn.not_team