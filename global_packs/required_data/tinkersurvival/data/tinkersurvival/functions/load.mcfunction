# MobCaptains v3.1.1 by PuckiSilver
scoreboard objectives add tinkersurvival dummy
scoreboard objectives add tinkersurvival.config dummy [{"text": "M", "color": "white"}, {"text": "o", "color": "#FF0000"}, {"text": "b C", "color": "white"}, {"text": "a", "color": "#FF0000"}, {"text": "ptains ", "color": "white"}, {"text": "Config", "color": "gold"}]
execute unless score .cool_down tinkersurvival.config = .cool_down tinkersurvival.config run scoreboard players set .cool_down tinkersurvival.config 60
execute unless score .spawn_chance tinkersurvival.config = .spawn_chance tinkersurvival.config run scoreboard players set .spawn_chance tinkersurvival.config 10
execute unless score .notify_on_spawn tinkersurvival.config = .notify_on_spawn tinkersurvival.config run scoreboard players set .notify_on_spawn tinkersurvival.config 2
execute unless score .notify_with_sound tinkersurvival.config = .notify_with_sound tinkersurvival.config run scoreboard players set .notify_with_sound tinkersurvival.config 1
execute unless score .should_glow tinkersurvival.config = .should_glow tinkersurvival.config run scoreboard players set .should_glow tinkersurvival.config 0
execute unless score .beam_on_spawn tinkersurvival.config = .beam_on_spawn tinkersurvival.config run scoreboard players set .beam_on_spawn tinkersurvival.config 1
execute unless score .weight_common tinkersurvival.config = .weight_common tinkersurvival.config run scoreboard players set .weight_common tinkersurvival.config 50
execute unless score .weight_uncommon tinkersurvival.config = .weight_uncommon tinkersurvival.config run scoreboard players set .weight_uncommon tinkersurvival.config 30
execute unless score .weight_rare tinkersurvival.config = .weight_rare tinkersurvival.config run scoreboard players set .weight_rare tinkersurvival.config 9
execute unless score .weight_legendary tinkersurvival.config = .weight_legendary tinkersurvival.config run scoreboard players set .weight_legendary tinkersurvival.config 2
team add tinkersurvival.common
team modify tinkersurvival.common color gray
team add tinkersurvival.uncommon
team modify tinkersurvival.uncommon color green
team add tinkersurvival.rare
team modify tinkersurvival.rare color dark_purple
team add tinkersurvival.legendary
team modify tinkersurvival.legendary color gold
scoreboard players operation .weight_max tinkersurvival = .weight_common tinkersurvival.config
scoreboard players operation .weight_max tinkersurvival += .weight_uncommon tinkersurvival.config
scoreboard players operation .weight_max tinkersurvival += .weight_rare tinkersurvival.config
scoreboard players operation .weight_max tinkersurvival += .weight_legendary tinkersurvival.config
execute unless score #random tinkersurvival = #random tinkersurvival store result score #random tinkersurvival run seed
execute unless score #rand_a tinkersurvival = #rand_a tinkersurvival run scoreboard players set #rand_a tinkersurvival 1234567
execute unless score #rand_c tinkersurvival = #rand_c tinkersurvival run scoreboard players set #rand_c tinkersurvival 1234567
schedule function tinkersurvival:particles/tick_2t 2 replace
schedule function tinkersurvival:register/tick_1s 1s replace
# MobCaptains v3.1.1 by PuckiSilver
