# MobCaptains v3.1.1 by PuckiSilver
execute if score .cool_down tinkersurvival matches 1.. run return -1
scoreboard players add .failure tinkersurvival 1
execute unless predicate tinkersurvival:should_spawn run return -1
execute unless predicate tinkersurvival:per_faliure run return -1
scoreboard players operation #random tinkersurvival *= #rand_a tinkersurvival
scoreboard players operation #random tinkersurvival += #rand_c tinkersurvival
scoreboard players operation .rand% tinkersurvival = #random tinkersurvival
scoreboard players operation .rand% tinkersurvival %= .weight_max tinkersurvival
execute if score .rand% tinkersurvival <= .weight_common tinkersurvival.config run function tinkersurvival:convert/common
scoreboard players operation .rand% tinkersurvival -= .weight_common tinkersurvival.config
execute if score .rand% tinkersurvival matches ..0 run return -1
execute if score .rand% tinkersurvival <= .weight_uncommon tinkersurvival.config run function tinkersurvival:convert/uncommon
scoreboard players operation .rand% tinkersurvival -= .weight_uncommon tinkersurvival.config
execute if score .rand% tinkersurvival matches ..0 run return -1
execute if score .rand% tinkersurvival <= .weight_rare tinkersurvival.config run function tinkersurvival:convert/rare
scoreboard players operation .rand% tinkersurvival -= .weight_rare tinkersurvival.config
execute if score .rand% tinkersurvival matches ..0 run return -1
execute if score .rand% tinkersurvival <= .weight_legendary tinkersurvival.config run function tinkersurvival:convert/legendary
# MobCaptains v3.1.1 by PuckiSilver
