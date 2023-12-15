execute as @a[tag=player] at @s run summon marker ~ ~ ~ {Tags:["lightning_bolt"]}
execute as @a[tag=player] at @s run title @s subtitle "ー 落雷 ー"
scoreboard players set #special_lighting_bolt_timer temporary 20