execute if score #mode rmn.temporary matches 1.. run playsound ui.button.click player @s ~ ~ ~ 1
execute unless score #mode rmn.temporary matches 1.. run playsound block.note_block.bass player @s ~ ~ ~ 1
execute unless score #mode rmn.temporary matches 1.. run scoreboard players set #mode_error_check rmn.temporary 1
execute if score #mode rmn.temporary matches 1.. run scoreboard players remove #mode rmn.temporary 1

function rmn:menu/command/mode/set_gametimer

function rmn:menu/