execute as @a[tag=player] at @s run title @s subtitle "ー 出血 ー"
scoreboard players remove #particletimer temporary 1
execute as @a[tag=player] at @s if score #particletimer temporary matches 1.. run particle falling_lava ~ ~ ~ 0.1 0.1 0.1 0 5 force @a[tag=player]