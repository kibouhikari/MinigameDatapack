scoreboard players remove #gametimer temporary 1
execute if score #gametimer temporary matches ..-1 run function minigame:option/tellraw/game_time/tellraw/gametimer_add
function minigame:option/data/
function minigame:option/tellraw/game_time/