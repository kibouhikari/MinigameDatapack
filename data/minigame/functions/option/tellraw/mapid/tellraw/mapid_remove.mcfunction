scoreboard players remove #mapid temporary 1
execute if score #mapid temporary matches ..-1 run function minigame:option/tellraw/mapid/tellraw/mapid_add
function minigame:option/data/
function minigame:option/tellraw/mapid/