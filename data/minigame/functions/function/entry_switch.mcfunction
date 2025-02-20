execute as @p run tag @s[tag=entry] add has_entry
execute as @p run tag @s add entry
execute as @p run tag @s[tag=has_entry] remove entry
execute as @p run tag @s remove has_entry