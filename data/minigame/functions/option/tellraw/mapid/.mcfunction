tellraw @s[tag=host] ["",{"text":"設定/Option -マップid-\n"},{"text":"・1加算","color":"green","clickEvent":{"action":"run_command","value":"/function minigame:option/tellraw/mapid/tellraw/mapid_add"}},{"text":"\n"},{"text":"・1減算","color":"red","clickEvent":{"action":"run_command","value":"/function minigame:option/tellraw/mapid/tellraw/mapid_remove"}},{"text":"\n"},{"text":"現在のマップid:","color":"yellow"},{"score":{"name":"#mapid","objective":"temporary"}},{"text":"\n"},{"text":"戻る","clickEvent":{"action":"run_command","value":"/function minigame:option/"}},{"text":"\n "}]