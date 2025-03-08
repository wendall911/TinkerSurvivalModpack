# MobCaptains v3.1.1 by PuckiSilver
attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.max_health 0.5 multiply
attribute @s minecraft:generic.armor modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.armor 2 add
attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.movement_speed 0.15 multiply
attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.attack_damage 0.7 multiply
attribute @s minecraft:generic.knockback_resistance modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.knockback_resistance 0.03 add
tag @s add tinkersurvival.common
team join tinkersurvival.common @s
data modify entity @s DeathLootTable set value "tinkersurvival:captain/common"
execute if score .notify_on_spawn tinkersurvival.config matches 4.. at @s run tellraw @a[distance=..128] ["", {"text": "\u2620", "color": "gray"}, {"text": " A ", "color": "white"}, {"text": "common Mob Captain", "color": "gray"}, {"text": " has spawned nearby!", "color": "white"}]
execute if score .notify_on_spawn tinkersurvival.config matches 4.. if score .notify_with_sound tinkersurvival.config matches 1 at @s run playsound entity.wither.spawn ambient @a[distance=..128] ~ ~ ~ 0.5 1.8 0.5
execute if score .beam_on_spawn tinkersurvival.config matches 1 at @s run particle dust 1 1 1 5 ~ ~ ~ 0 200 0 0 300 force
function tinkersurvival:convert/captain
# MobCaptains v3.1.1 by PuckiSilver
