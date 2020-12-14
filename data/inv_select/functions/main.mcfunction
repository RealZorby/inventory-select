#initialize players
execute as @a[tag=!invs_initialized] at @s run function inv_select:init_player

#kill unused detectors
execute as @a[tag=!invs_player,tag=invs_rct] at @s run function inv_select:remove_detectors

#move detectors
tag @a[tag=!invs_player,tag=invs_rct] remove invs_rct
execute as @a[tag=invs_player] at @s run function inv_select:move_detectors
tag @a[tag=invs_player,tag=!invs_rct] add invs_rct

execute as @a[tag=invs_player] at @s run tp @e[tag=invs_detector]

#check for clicks