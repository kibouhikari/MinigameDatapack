## minigame:in_game/loadout/
#execute store result score @s random_loadout run random value 1..2

# ロードアウト樽の中身付与
$item replace entity @s hotbar.0 from block $(x) $(y) $(z) container.0
$item replace entity @s hotbar.1 from block $(x) $(y) $(z) container.1
$item replace entity @s hotbar.2 from block $(x) $(y) $(z) container.2
$item replace entity @s hotbar.3 from block $(x) $(y) $(z) container.3
$item replace entity @s hotbar.4 from block $(x) $(y) $(z) container.4
$item replace entity @s hotbar.5 from block $(x) $(y) $(z) container.5
$item replace entity @s hotbar.6 from block $(x) $(y) $(z) container.6
$item replace entity @s hotbar.7 from block $(x) $(y) $(z) container.7
$item replace entity @s hotbar.8 from block $(x) $(y) $(z) container.8
$item replace entity @s armor.head from block $(x) $(y) $(z) container.18
$item replace entity @s armor.chest from block $(x) $(y) $(z) container.19
$item replace entity @s armor.legs from block $(x) $(y) $(z) container.20
$item replace entity @s armor.feet from block $(x) $(y) $(z) container.21
$item replace entity @s weapon.offhand from block $(x) $(y) $(z) container.22