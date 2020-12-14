#error handeling
summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,Tags:["invs_error"]}
scoreboard objectives add invs_error dummy
execute unless data storage muld_datapacks uid run tellraw @a [{"text": "Inventory Select", "color": "aqua"}, {"text": " > ", "color": "white"}, {"text": "Error: missing required datapack ", "color": "red"}, {"text": "uid", "color": "red", "italic": true, "hoverEvent": {"action": "show_text", "value": "Click to download."}, "clickEvent": {"action": "open_url", "value": "https://github.com/RealZorby/uid/archive/main.zip"}}]
execute unless data storage muld_datapacks uid run scoreboard players set @e[tag=invs_error,limit=1] invs_error 1
execute if score @e[tag=invs_error,limit=1] invs_error matches 1 run datapack disable "file/inventory_select"
scoreboard objectives remove invs_error
kill @e[tag=invs_error]

data modify storage muld_datapacks invs set value 1
scoreboard objectives add invs_uid dummy
tellraw @a [{"text": "Inventory Select", "color": "aqua"}, {"text": " > Initialized!\n", "color": "white"}, {"text": " config", "bold": true, "color": "green", "clickEvent": {"action": "run_command", "value": "/function inv_select:config"}, "hoverEvent": {"action": "show_text", "value": [{"text": "Show the "}, {"text": "config", "color": "green", "bold": true}, {"text": " menu.", "color": "white"}]}}, {"text": "\n license", "bold": true, "color": "red", "clickEvent": {"action": "run_command", "value": "/function inv_select:license"}, "hoverEvent": {"action": "show_text", "value": [{"text": "Show the "}, {"text": "license", "color": "red", "bold": true}, {"text": ".", "color": "white"}]}}]