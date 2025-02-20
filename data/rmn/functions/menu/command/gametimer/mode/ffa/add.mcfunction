playsound ui.button.click player @s ~ ~ ~ 1

scoreboard players add #ffa_gametimer rmn.temporary 30

execute unless score #no_menu_view rmn.temporary matches 1 run function rmn:menu/