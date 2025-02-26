playsound ui.button.click master @s ~ ~ ~ 1

scoreboard players add #br_gametimer_0 rmn.temporary 30

execute unless score #no_menu_view rmn.temporary matches 1 run function rmn:menu/