tag @s add THIS
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s hotbar.0 from block ~ ~-1 ~ container.0
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s hotbar.1 from block ~ ~-1 ~ container.1
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s hotbar.2 from block ~ ~-1 ~ container.2
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s hotbar.3 from block ~ ~-1 ~ container.3
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s hotbar.4 from block ~ ~-1 ~ container.4
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s hotbar.5 from block ~ ~-1 ~ container.5
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s hotbar.6 from block ~ ~-1 ~ container.6
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s hotbar.7 from block ~ ~-1 ~ container.7
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s hotbar.8 from block ~ ~-1 ~ container.8
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s armor.head from block ~ ~-1 ~ container.18
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s armor.chest from block ~ ~-1 ~ container.19
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s armor.legs from block ~ ~-1 ~ container.20
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s armor.feet from block ~ ~-1 ~ container.21
execute as @e[tag=loadout] at @s as @a[tag=THIS,tag=player] if score @s loadout = @e[tag=loadout,limit=1,sort=nearest] loadout run item replace entity @s weapon.offhand from block ~ ~-1 ~ container.22
tag @s remove THIS