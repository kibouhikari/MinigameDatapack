execute if score #map rmn.temporary matches 0 run tellraw @s [{"text":"・試合時間 "},{"text":"◀","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/gametimer/mode/tdm/remove"}},{"text":" ["},{"score":{"name": "#tdm_gametimer","objective": "rmn.temporary"}},{"text":"s] "},{"text":"▶","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/gametimer/mode/tdm/add"}}]
execute if score #map rmn.temporary matches 1 run tellraw @s [{"text":"・試合時間 "},{"text":"◀","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/gametimer/mode/tdm/remove"}},{"text":" ["},{"score":{"name": "#tdm_gametimer","objective": "rmn.temporary"}},{"text":"s] "},{"text":"▶","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/gametimer/mode/tdm/add"}}]