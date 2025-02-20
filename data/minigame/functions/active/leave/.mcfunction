execute as @a[scores={leave_game=1..}] at @s run tag @s remove entry
execute as @a[scores={leave_game=1..}] at @s run tag @s remove player
execute as @a[scores={leave_game=1..}] at @s run team join lobby
execute as @a[scores={leave_game=1..}] at @s run tp @s 0.5 56 0.5 0 0
execute as @a[scores={leave_game=1..}] at @s run clear @s
scoreboard players set @a killcount 0
scoreboard players set @a killscore 0
scoreboard players set @a leave_game 0