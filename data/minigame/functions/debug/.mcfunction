tag @s[tag=debug] add has_debug
tag @s add debug
tag @p[tag=has_debug] remove debug
tag @a remove has_debug
tellraw @s[tag=debug] ["",{"text":"Debug Mode "},{"text":"Enabled","color":"green"}]
tellraw @s[tag=!debug] ["",{"text":"Debug Mode "},{"text":"Disabled","color":"red"}]
execute if entity @s[tag=debug] run gamerule sendCommandFeedback true
execute if entity @s[tag=!debug] run gamerule sendCommandFeedback false