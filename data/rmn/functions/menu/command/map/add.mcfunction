execute if score #map rmn.temporary matches ..0 run playsound ui.button.click master @s ~ ~ ~ 1
execute unless score #map rmn.temporary matches ..0 run playsound block.note_block.bass master @s ~ ~ ~ 1
execute unless score #map rmn.temporary matches ..0 run scoreboard players set #map_error_check rmn.temporary 1

execute unless score #map rmn.temporary matches ..0 run scoreboard players set #no_menu_view rmn.temporary 1
execute unless score #map rmn.temporary matches ..0 run function rmn:menu/command/map/remove
scoreboard players add #map rmn.temporary 1

execute if score #mode rmn.temporary matches 0 run function rmn:menu/command/map/mode/add/ffa
execute if score #mode rmn.temporary matches 1 run function rmn:menu/command/map/mode/add/tdm

execute unless score #no_menu_view rmn.temporary matches 1 run function rmn:menu/
scoreboard players set #no_menu_view rmn.temporary 0