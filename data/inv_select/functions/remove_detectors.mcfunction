tag @s add invs_activep
execute as @e[type=armor_stand,tag=invs_detector] at @s if score @s uid_id = @a[tag=invs_activep,limit=1] uid_id run kill @s
tag @s remove invs_activep