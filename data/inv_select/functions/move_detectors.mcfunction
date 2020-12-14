tag @s add invs_activep

execute as @a[tag=invs_player,tag=!invs_rct] run summon armor_stand ~ ~ ~ {Tags:["invs_detector", "invs_actives"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ShowArms:1b,DisabledSlots:4079166}
scoreboard players add @e[tag=invs_actives] uid_id 0
scoreboard players operation @e[tag=invs_actives] uid_id = @s uid_id
tag @a[tag=invs_actives] remove invs_actives

execute as @e[tag=invs_detector] if score @a[tag=invs_activep,limit=1] uid_id = @s uid_id run tp @s @a[tag=invs_activep,limit=1]
execute as @e[tag=invs_detector] if score @a[tag=invs_activep,limit=1] uid_id = @s uid_id run tp @s ^ ^ ^1

tag @s remove invs_activep