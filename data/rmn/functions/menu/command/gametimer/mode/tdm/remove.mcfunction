execute if score #tdm_gametimer rmn.temporary matches 30.. run playsound ui.button.click player @s ~ ~ ~ 1
execute unless score #tdm_gametimer rmn.temporary matches 30.. run playsound block.note_block.bass player @s ~ ~ ~ 1
execute unless score #tdm_gametimer rmn.temporary matches 30.. run scoreboard players set #gametimer_error_check rmn.temporary 1

execute unless score #tdm_gametimer rmn.temporary matches 30.. run scoreboard players set #no_menu_view rmn.temporary 1
execute unless score #tdm_gametimer rmn.temporary matches 30.. run function rmn:menu/command/gametimer/mode/tdm/add
scoreboard players remove #tdm_gametimer rmn.temporary 30

function rmn:menu/
scoreboard players set #no_menu_view rmn.temporary 0