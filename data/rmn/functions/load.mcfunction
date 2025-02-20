
# スコア作成
    scoreboard objectives add rmn.temporary dummy
    scoreboard objectives add rmn.loadout dummy
    scoreboard objectives add rmn.deathcount deathCount
    scoreboard objectives add rmn.leave_game custom:leave_game
    scoreboard objectives add rmn.killcount playerKillCount
    scoreboard objectives add rmn.killscore playerKillCount
    scoreboard objectives add rmn.random_team dummy
    scoreboard objectives add rmn.random_spawn dummy

# スコア設定
    #0加算してダミープレイヤーに値を持たせる
    scoreboard players add #dummy killscore 0
    scoreboard players add #most_killcount rmn.temporary 0
    scoreboard players add #killcount.red rmn.temporary 0
    scoreboard players add #killcount.blue rmn.temporary 0
    scoreboard players add #map rmn.temporary 0
    scoreboard players add #mode rmn.temporary 0
    scoreboard players add #mode_error_check rmn.temporary 0
    scoreboard players add #map_error_check rmn.temporary 0
    scoreboard players add #gametimer_error_check rmn.temporary 0

    #各モードのデフォルト試合時間
    scoreboard players set #ffa_default_gametimer rmn.temporary 600
    scoreboard players set #tdm_default_gametimer rmn.temporary 600

    #特殊イベント
    scoreboard players set #special_1Limit rmn.temporary 4800
    scoreboard players set #special_2Limit rmn.temporary 3600
    scoreboard players set #special_3Limit rmn.temporary 2400
    scoreboard players set #special_4Limit rmn.temporary 1200

    #リストにキル数を表示
    scoreboard objectives setdisplay list killcount

# チーム作成
    team add rmn.lobby "Lobby"
    team add rmn.red "Red"
    team add rmn.blue "Blue"
    team add rmn.single "Single"

# チーム設定
    #Lobby
    team modify rmn.lobby nametagVisibility always
    team modify rmn.lobby friendlyFire false
    team modify rmn.lobby prefix [{"text":"Lobby","color":"gray"},{"text":" - ","color":"white"}]

    #Red
    team modify rmn.red nametagVisibility hideForOtherTeams
    team modify rmn.red friendlyFire false
    team modify rmn.red prefix [{"text":"Red","color":"red"},{"text":" - ","color":"white"}]

    #Blue
    team modify rmn.blue nametagVisibility hideForOtherTeams
    team modify rmn.blue friendlyFire false
    team modify rmn.blue prefix [{"text":"Blue","color":"blue"},{"text":" - ","color":"white"}]
    
    #Single
    team modify rmn.single nametagVisibility hideForOwnTeam
    team modify rmn.single friendlyFire true
    team modify rmn.single prefix [{"text":"FFA","color":"aqua"},{"text":" - ","color":"white"}]

# ボスバー作成
    bossbar add rmn.gametimer "試合時間"

# ボスバー設定
    bossbar set rmn.gametimer color red
    bossbar set rmn.gametimer style notched_10

# gamerule
    gamerule doImmediateRespawn true


# リロード通知
    tellraw @a [{"text":"Re: ","color":"red"},{"text":"Minigame Datapack","color":"green"},{"text":" has successfully loaded!","color":"white"}]