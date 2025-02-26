scoreboard players set @e[type=marker,tag=rmn.tdm_random_spawn] rmn.random_spawn 0
tag @e[type=marker,tag=rmn.red] remove rmn.red
execute as @a[team=rmn.blue,tag=rmn.player] at @s run scoreboard players add @e[type=marker,tag=rmn.map4,tag=rmn.tdm_random_spawn,limit=1,sort=furthest] rmn.random_spawn 1
execute as @a[tag=rmn.player,team=rmn.blue] at @s run scoreboard players add #blue_player rmn.temporary 1
scoreboard players set #red_spawn_found rmn.temporary 0
execute as @e[type=marker,tag=rmn.map4,tag=rmn.tdm_random_spawn] if score @s rmn.random_spawn >= #blue_player rmn.temporary run scoreboard players set #red_spawn_found rmn.temporary 1
execute if score #red_spawn_found rmn.temporary matches 0 run function rmn:map/map4/mode/tdm/system/spawn/change/red/repeat
execute as @e[type=marker,tag=rmn.map4,tag=rmn.tdm_random_spawn] if score @s rmn.random_spawn >= #blue_player rmn.temporary run tag @s add rmn.can_spawn_red
tag @e[type=marker,tag=rmn.map4,tag=rmn.can_spawn_red,limit=1,sort=random] add rmn.red
tag @e[type=marker,tag=rmn.map4,tag=rmn.can_spawn_red] remove rmn.can_spawn_red
scoreboard players set #blue_player rmn.temporary 0