scoreboard players set @e[type=marker,tag=rmn.tdm_random_spawn] rmn.random_spawn 0
tag @e[type=marker,tag=rmn.blue] remove rmn.blue
execute as @a[team=rmn.red,tag=rmn.player] at @s run scoreboard players add @e[type=marker,tag=rmn.map0,tag=rmn.tdm_random_spawn,limit=1,sort=furthest] rmn.random_spawn 1
execute as @a[tag=rmn.player,team=rmn.red] at @s run scoreboard players add #red_player rmn.temporary 1
scoreboard players set #blue_spawn_found rmn.temporary 0
execute as @e[type=marker,tag=rmn.map0,tag=rmn.tdm_random_spawn] if score @s rmn.random_spawn >= #red_player rmn.temporary run scoreboard players set #blue_spawn_found rmn.temporary 1
execute if score #blue_spawn_found rmn.temporary matches 0 run function rmn:map/map0/mode/tdm/system/spawn/change/blue/repeat
execute as @e[type=marker,tag=rmn.map0,tag=rmn.tdm_random_spawn] if score @s rmn.random_spawn >= #red_player rmn.temporary run tag @s add rmn.can_spawn_blue
tag @e[type=marker,tag=rmn.map0,tag=rmn.can_spawn_blue,limit=1,sort=random] add rmn.blue
tag @e[type=marker,tag=rmn.map0,tag=rmn.can_spawn_blue] remove rmn.can_spawn_blue
scoreboard players set #red_player rmn.temporary 0