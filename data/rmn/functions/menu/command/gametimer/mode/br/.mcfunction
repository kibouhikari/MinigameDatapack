execute if score #map rmn.temporary matches 5 run tellraw @s [{"text":"・試合時間 "},{"text":"◀","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/gametimer/mode/br/remove"}},{"text":" ["},{"score":{"name": "#br_gametimer_0","objective": "rmn.temporary"}},{"text":"s] "},{"text":"▶","color":"green","clickEvent": {"action": "run_command","value": "/function rmn:menu/command/gametimer/mode/br/add"}}]