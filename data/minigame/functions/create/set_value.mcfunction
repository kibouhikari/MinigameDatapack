## minigame:create/set_value
$tell @a $(x)
$tell @a $(y)
$tell @a $(z)
$tell @a $(count)
#こんにちは！
$execute if data storage minigame: respawn[$(count)] run data modify storage minigame: respawn[$(count)] set value {x:$(x),y:$(y),z:$(z)}
$execute unless data storage minigame: respawn[$(count)] run data modify storage minigame: respawn append value {x:$(x),y:$(y),z:$(z)}