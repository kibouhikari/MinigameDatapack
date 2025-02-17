scoreboard objectives add temporary dummy
tag @s add host

# スコアボード設定
scoreboard players add #gametimer temporary 0
scoreboard players add #mapid temporary 0
scoreboard players add #loadout_switch temporary 0

tp @s ~ ~ ~ 0 0
fill ~4 ~5 ~4 ~-4 ~-1 ~-4 sandstone hollow
setblock ~ ~5 ~ glass
setblock ~ ~-1 ~ diamond_block
setblock ~2 ~4 ~2 light
setblock ~2 ~4 ~-2 light
setblock ~-2 ~4 ~2 light
setblock ~-2 ~4 ~-2 light
setblock ~ ~ ~5 command_block
data modify block ~ ~ ~5 Command set value "function minigame:game/start/ with storage minigame:"
setblock ~ ~ ~4 gold_block
setblock ~ ~ ~3 oak_button
#setblock ~ ~1 ~3 oak_sign
#data modify block ~ ~1 ~3 front_text.messages[1] set value "{\"text\":\"entry\"}"
setblock ~-1 ~ ~5 command_block
data modify block ~-1 ~ ~5 Command set value "function minigame:function/entry_switch"
setblock ~-1 ~ ~4 blue_wool
setblock ~-1 ~ ~3 oak_button
setblock ~1 ~10 ~ barrel{Items:[{Slot:9b,id:"minecraft:oak_sign",Count:1b,tag:{display:{Name:'{"text":"↓頭装備"}'}}},{Slot:10b,id:"minecraft:oak_sign",Count:1b,tag:{display:{Name:'{"text":"↓胴装備"}'}}},{Slot:11b,id:"minecraft:oak_sign",Count:1b,tag:{display:{Name:'{"text":"↓脚装備"}'}}},{Slot:12b,id:"minecraft:oak_sign",Count:1b,tag:{display:{Name:'{"text":"↓靴装備"}'}}},{Slot:13b,id:"minecraft:oak_sign",Count:1b,tag:{display:{Name:'{"text":"↓左手装備"}'}}}]} replace
data modify storage minigame: loadout.x set from block ~1 ~10 ~ x
data modify storage minigame: loadout.y set from block ~1 ~10 ~ y
data modify storage minigame: loadout.z set from block ~1 ~10 ~ z
setworldspawn ~ ~ ~ 0
execute store result storage minigame: firstPos.x int 1 run data get entity @s Pos[0]
execute store result storage minigame: firstPos.y int 1 run data get entity @s Pos[1]
execute store result storage minigame: firstPos.z int 1 run data get entity @s Pos[2]
scoreboard players set #count temporary 0
execute store result storage minigame:set_pos count int 1 run scoreboard players get #count temporary
data modify storage minigame: respawn set value []
data remove storage minigame:red x
data remove storage minigame:red y
data remove storage minigame:red z
data remove storage minigame:blue x
data remove storage minigame:blue y
data remove storage minigame:blue z
data remove storage minigame:green x
data remove storage minigame:green y
data remove storage minigame:green z
data remove storage minigame:yellow x
data remove storage minigame:yellow y
data remove storage minigame:yellow z
bossbar add gametimer "試合時間"
#gamerule commandBlockOutput false
#gamerule sendCommandFeedback false
#gamerule reducedDebugInfo true
scoreboard players set #create temporary 1
function minigame:option/
tellraw @s [{"text":"、"},{"clickEvent":{"action":"open_url","value":"https://github.com/kibouhikari/MinigameDatapack"},"text":"https://github.com/kibouhikari/MinigameDatapack"},{"text":"を確認してください。"}]
tellraw @s {"text":"環境設定が終わったら、/reloadを実行してください。"}
tellraw @s {"text":"現在あなたがいる箱はロビーです。ロビーの上にある樽のアイテムを変更することでロードアウトを設定することができます。"}
tellraw @s {"text":"create時の設定の後も、/function minigame:option/ と実行することで、設定を変更することができます。"}
tellraw @s {"text":"※絶対に指示をされていないfunctionコマンドを実行しないでください。","color":"red"}