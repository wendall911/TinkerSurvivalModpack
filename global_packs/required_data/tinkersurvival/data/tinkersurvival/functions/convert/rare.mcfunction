# MobCaptains v3.1.1 by PuckiSilver
attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.max_health 1.8 multiply
attribute @s minecraft:generic.armor modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.armor 8 add
attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.movement_speed 0.4 multiply
attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.attack_damage 2.1 multiply
attribute @s minecraft:generic.knockback_resistance modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.knockback_resistance 0.5 add
tag @s add tinkersurvival.rare
team join tinkersurvival.rare @s
data modify entity @s DeathLootTable set value "tinkersurvival:captain/rare"
execute if score .notify_on_spawn tinkersurvival.config matches 2.. at @s run tellraw @a[distance=..128] ["", {"text": "\u2620", "color": "#B400FF"}, {"text": " A ", "color": "white"}, {"text": "rare Mob Captain", "color": "#B400FF"}, {"text": " has spawned nearby!", "color": "white"}]
execute if score .notify_on_spawn tinkersurvival.config matches 2.. if score .notify_with_sound tinkersurvival.config matches 1 at @s run playsound entity.wither.spawn ambient @a[distance=..128] ~ ~ ~ 0.5 1.8 0.5
execute if score .beam_on_spawn tinkersurvival.config matches 1 at @s run particle dust 0.7 0 1 5 ~ ~ ~ 0 200 0 0 300 force
function tinkersurvival:convert/captain
# MobCaptains v3.1.1 by PuckiSilver
