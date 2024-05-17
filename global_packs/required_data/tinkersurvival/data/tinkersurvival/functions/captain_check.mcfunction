# MobCaptains v2.1.2 by PuckiSilver
execute unless score .cool_down tinkersurvival matches 1.. run scoreboard players add .faliure tinkersurvival 1
scoreboard players reset #try tinkersurvival
execute unless score .cool_down tinkersurvival matches 1.. if predicate tinkersurvival:should_spawn if predicate tinkersurvival:per_failure run scoreboard players set #try tinkersurvival 1
scoreboard players operation .weight_max tinkersurvival = .weight_common tinkersurvival.config
scoreboard players operation .weight_max tinkersurvival += .weight_uncommon tinkersurvival.config
scoreboard players operation .weight_max tinkersurvival += .weight_rare tinkersurvival.config
scoreboard players operation .weight_max tinkersurvival += .weight_legendary tinkersurvival.config
function tinkersurvival:next_random
scoreboard players operation .rand% tinkersurvival = #random tinkersurvival
scoreboard players operation .rand% tinkersurvival %= .weight_max tinkersurvival
scoreboard players add .rand% tinkersurvival 1
execute if score #try tinkersurvival matches 1 unless score .cool_down tinkersurvival matches 1.. if score .rand% tinkersurvival <= .weight_common tinkersurvival.config run function tinkersurvival:convert/common
execute if score #try tinkersurvival matches 1 run scoreboard players operation .rand% tinkersurvival -= .weight_common tinkersurvival.config
execute if score #try tinkersurvival matches 1 unless score .cool_down tinkersurvival matches 1.. if score .rand% tinkersurvival <= .weight_uncommon tinkersurvival.config run function tinkersurvival:convert/uncommon
execute if score #try tinkersurvival matches 1 run scoreboard players operation .rand% tinkersurvival -= .weight_uncommon tinkersurvival.config
execute if score #try tinkersurvival matches 1 unless score .cool_down tinkersurvival matches 1.. if score .rand% tinkersurvival <= .weight_rare tinkersurvival.config run function tinkersurvival:convert/rare
execute if score #try tinkersurvival matches 1 run scoreboard players operation .rand% tinkersurvival -= .weight_rare tinkersurvival.config
execute if score #try tinkersurvival matches 1 unless score .cool_down tinkersurvival matches 1.. if score .rand% tinkersurvival <= .weight_common tinkersurvival.config run function tinkersurvival:convert/legendary
# MobCaptains v2.1.2 by PuckiSilver
