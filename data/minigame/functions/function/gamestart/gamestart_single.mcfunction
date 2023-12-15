team join single_battle @a[tag=player]
execute as @a[tag=player] store result score @s random_spawn run random value 0..5
tp @a[scores={random_spawn=0},tag=player] -14.5 68 118.5
tp @a[scores={random_spawn=1},tag=player] -13.5 61 131.5
tp @a[scores={random_spawn=2},tag=player] 0.5 65 130.5
tp @a[scores={random_spawn=3},tag=player] -15.5 71 178.5
tp @a[scores={random_spawn=4},tag=player] -29.5 63 164.5
tp @a[scores={random_spawn=5},tag=player] -35.5 66 132.5